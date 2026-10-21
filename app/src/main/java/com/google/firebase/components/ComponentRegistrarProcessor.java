package com.google.firebase.components;

import java.util.List;

/* loaded from: classes2.dex */
public interface ComponentRegistrarProcessor {
    public static final ComponentRegistrarProcessor NOOP = new g();

    List<Component<?>> processRegistrar(ComponentRegistrar componentRegistrar);
}
