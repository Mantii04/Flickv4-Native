package com.bumptech.glide;

/* loaded from: classes.dex */
public class Registry$NoResultEncoderAvailableException extends Registry$MissingComponentException {
    public Registry$NoResultEncoderAvailableException(Class<?> cls) {
        super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
    }
}
