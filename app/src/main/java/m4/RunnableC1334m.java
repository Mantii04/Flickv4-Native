package m4;

import android.os.Message;

/* renamed from: m4.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1334m implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Message f18688b;

    public RunnableC1334m(Message message) {
        this.f18688b = message;
    }

    @Override // java.lang.Runnable
    public void run() {
        throw new AssertionError("Unknown handler message received: " + this.f18688b.what);
    }
}
