/*
 * Copyright (C) 2006, 2007 Apple Inc.  All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY APPLE INC. ``AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL APPLE INC. OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 
 */

#include "config.h"

#include "content/web_impl_win/npapi/PluginMainThreadScheduler.h"
#include "content/web_impl_win/npapi/WebPluginImpl.h"
#include "third_party/npapi/bindings/npruntime.h"
#include "third_party/WebKit/Source/core/page/Page.h"

using namespace blink;
using namespace content;

// The plugin view is always the ndata of the instance,. Sometimes, plug-ins will call an instance-specific function
// with a NULL instance. To workaround this, call the last plug-in view that made a call to a plug-in.
// Currently, the current plug-in view is only set before NPP_New in PluginView::start.
// This specifically works around Flash and Shockwave. When we call NPP_New, they call NPN_Useragent with a NULL instance.
static WebPluginImpl* pluginViewForInstance(NPP instance)
{
    if (instance && instance->ndata)
        return static_cast<WebPluginImpl*>(instance->ndata);
    return WebPluginImpl::currentPluginView();
}

void* NPN_MemAlloc(uint32_t size)
{
    return malloc(size);
}

void NPN_MemFree(void* ptr)
{
    free(ptr);
}

uint32_t NPN_MemFlush(uint32_t)
{
    // Do nothing
    return 0;
}

void NPN_ReloadPlugins(NPBool reloadPages)
{
    Page::refreshPlugins();
}

NPError NPN_RequestRead(NPStream*, NPByteRange*)
{
    return NPERR_STREAM_NOT_SEEKABLE;
}

NPError NPN_GetURLNotify(NPP instance, const char* url, const char* target, void* notifyData)
{
    return pluginViewForInstance(instance)->getURLNotify(url, target, notifyData);
}

NPError NPN_GetURL(NPP instance, const char* url, const char* target)
{
    return pluginViewForInstance(instance)->getURL(url, target);
}

NPError NPN_PostURLNotify(NPP instance, const char* url, const char* target, uint32_t len, const char* buf, NPBool file, void* notifyData)
{
    return pluginViewForInstance(instance)->postURLNotify(url, target, len, buf, file, notifyData);
}

NPError NPN_PostURL(NPP instance, const char* url, const char* target, uint32_t len, const char* buf, NPBool file)
{
    return pluginViewForInstance(instance)->postURL(url, target, len, buf, file);
}

NPError NPN_NewStream(NPP instance, NPMIMEType type, const char* target, NPStream** stream)
{
    return pluginViewForInstance(instance)->newStream(type, target, stream);
}

int32_t NPN_Write(NPP instance, NPStream* stream, int32_t len, void* buffer)
{
    return pluginViewForInstance(instance)->write(stream, len, buffer);
}

NPError NPN_DestroyStream(NPP instance, NPStream* stream, NPReason reason)
{
    return pluginViewForInstance(instance)->destroyStream(stream, reason);
}

const char* NPN_UserAgent(NPP instance)
{
    WebPluginImpl* view = pluginViewForInstance(instance);

     if (!view)
         return WebPluginImpl::userAgentStatic();
 
    return view->userAgent();
}

void NPN_Status(NPP instance, const char* message)
{
    pluginViewForInstance(instance)->status(message);
}

void NPN_InvalidateRect(NPP instance, NPRect* invalidRect)
{
    WebPluginImpl* view = pluginViewForInstance(instance);
    view->invalidateRect(invalidRect);
}

void NPN_InvalidateRegion(NPP instance, NPRegion invalidRegion)
{
    pluginViewForInstance(instance)->invalidateRegion(invalidRegion);
}

void NPN_ForceRedraw(NPP instance)
{
    pluginViewForInstance(instance)->forceRedraw();
}

NPError NPN_GetValue(NPP instance, NPNVariable variable, void* value)
{
    WebPluginImpl* view = pluginViewForInstance(instance);

     if (!view)
         return WebPluginImpl::getValueStatic(variable, value);

    return pluginViewForInstance(instance)->getValue(variable, value);
}

NPError NPN_SetValue(NPP instance, NPPVariable variable, void* value)
{
   return pluginViewForInstance(instance)->setValue(variable, value);
}

void* NPN_GetJavaEnv()
{
    // Unsupported
    return 0;
}

void* NPN_GetJavaPeer(NPP)
{
    // Unsupported
    return 0;
}

void NPN_PushPopupsEnabledState(NPP instance, NPBool enabled)
{
    pluginViewForInstance(instance)->pushPopupsEnabledState(enabled);
}

void NPN_PopPopupsEnabledState(NPP instance)
{
    pluginViewForInstance(instance)->popPopupsEnabledState();
}

extern "C" typedef void PluginThreadAsyncCallFunction(void*);
void NPN_PluginThreadAsyncCall(NPP instance, PluginThreadAsyncCallFunction func, void* userData)
{
    // Callback function type only differs from MainThreadFunction by being extern "C", which doesn't affect calling convention on any compilers we use.
    PluginMainThreadScheduler::scheduler().scheduleCall(instance, reinterpret_cast<PluginMainThreadScheduler::MainThreadFunction*>(func), userData);
}

NPError NPN_GetValueForURL(NPP instance, NPNURLVariable variable, const char* url, char** value, uint32_t* len)
{
    return pluginViewForInstance(instance)->getValueForURL(variable, url, value, len);
}

NPError NPN_SetValueForURL(NPP instance, NPNURLVariable variable, const char* url, const char* value, uint32_t len)
{
    return pluginViewForInstance(instance)->setValueForURL(variable, url, value, len);
}

NPError NPN_GetAuthenticationInfo(NPP instance, const char* protocol, const char* host, int32_t port, const char* scheme, const char* realm, char** username, uint32_t* ulen, char** password, uint32_t* plen)
{
    return pluginViewForInstance(instance)->getAuthenticationInfo(protocol, host, port, scheme, realm, username, ulen, password, plen);
}

NPError NPN_PopUpContextMenu(NPP instance, NPMenu* menu)
{
//     UNUSED_PARAM(instance);
//     UNUSED_PARAM(menu);
    return NPERR_NO_ERROR;
}
