package com.bumptech.glide;

import java.util.List;
import r2.InterfaceC1562V;

/* loaded from: classes.dex */
public class Registry$NoModelLoaderAvailableException extends Registry$MissingComponentException {
    public Registry$NoModelLoaderAvailableException(Object obj) {
        super("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
    }

    public <M> Registry$NoModelLoaderAvailableException(M m7, List<InterfaceC1562V> list) {
        super("Found ModelLoaders for model class: " + list + ", but none that handle this specific model instance: " + m7);
    }

    public Registry$NoModelLoaderAvailableException(Class<?> cls, Class<?> cls2) {
        super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
    }
}
