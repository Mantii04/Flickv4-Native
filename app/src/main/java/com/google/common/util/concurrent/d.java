package com.google.common.util.concurrent;

import V3.AbstractC0346g;
import V3.E;
import V3.o;
import V3.p;
import V3.r;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;

/* loaded from: classes2.dex */
public abstract class d extends AbstractC0346g {

    /* renamed from: s, reason: collision with root package name */
    public static final r f13211s;

    /* renamed from: t, reason: collision with root package name */
    public static final E f13212t = new E(d.class);

    /* renamed from: q, reason: collision with root package name */
    public volatile Set f13213q;

    /* renamed from: r, reason: collision with root package name */
    public volatile int f13214r;

    static {
        Throwable th;
        r pVar;
        try {
            pVar = new o(AtomicReferenceFieldUpdater.newUpdater(d.class, Set.class, "q"), AtomicIntegerFieldUpdater.newUpdater(d.class, "r"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            pVar = new p();
        }
        f13211s = pVar;
        if (th != null) {
            f13212t.a().log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
    }
}
