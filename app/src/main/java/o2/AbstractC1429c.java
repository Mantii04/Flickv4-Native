package o2;

import java.util.Queue;

/* renamed from: o2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1429c {

    /* renamed from: a, reason: collision with root package name */
    public final Queue f19044a = G2.t.createQueue(20);

    public void offer(InterfaceC1443q interfaceC1443q) {
        Queue queue = this.f19044a;
        if (queue.size() < 20) {
            queue.offer(interfaceC1443q);
        }
    }
}
