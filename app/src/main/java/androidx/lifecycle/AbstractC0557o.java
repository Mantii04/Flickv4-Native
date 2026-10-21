package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;

/* renamed from: androidx.lifecycle.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0557o {
    public AbstractC0557o() {
        new AtomicReference();
    }

    public abstract void addObserver(InterfaceC0560s interfaceC0560s);

    public abstract Lifecycle$State getCurrentState();

    public abstract void removeObserver(InterfaceC0560s interfaceC0560s);
}
