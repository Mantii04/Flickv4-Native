package s0;

import androidx.media3.common.C;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.PriorityQueue;

/* renamed from: s0.B, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1604B {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1603A f19897a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayDeque f19898b = new ArrayDeque();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayDeque f19899c = new ArrayDeque();

    /* renamed from: d, reason: collision with root package name */
    public final PriorityQueue f19900d = new PriorityQueue();

    /* renamed from: e, reason: collision with root package name */
    public int f19901e = -1;

    /* renamed from: f, reason: collision with root package name */
    public z f19902f;

    public C1604B(InterfaceC1603A interfaceC1603A) {
        this.f19897a = interfaceC1603A;
    }

    public final void a(int i2) {
        ArrayList arrayList;
        while (true) {
            PriorityQueue priorityQueue = this.f19900d;
            if (priorityQueue.size() <= i2) {
                return;
            }
            z zVar = (z) Util.castNonNull((z) priorityQueue.poll());
            int i7 = 0;
            while (true) {
                int size = zVar.f19994b.size();
                arrayList = zVar.f19994b;
                if (i7 >= size) {
                    break;
                }
                this.f19897a.consume(zVar.f19995e, (ParsableByteArray) arrayList.get(i7));
                this.f19898b.push((ParsableByteArray) arrayList.get(i7));
                i7++;
            }
            arrayList.clear();
            z zVar2 = this.f19902f;
            if (zVar2 != null && zVar2.f19995e == zVar.f19995e) {
                this.f19902f = null;
            }
            this.f19899c.push(zVar);
        }
    }

    public void add(long j7, ParsableByteArray parsableByteArray) {
        int i2;
        if (j7 != C.TIME_UNSET && (i2 = this.f19901e) != 0) {
            PriorityQueue priorityQueue = this.f19900d;
            if (i2 == -1 || priorityQueue.size() < this.f19901e || j7 >= ((z) Util.castNonNull((z) priorityQueue.peek())).f19995e) {
                ArrayDeque arrayDeque = this.f19898b;
                ParsableByteArray parsableByteArray2 = arrayDeque.isEmpty() ? new ParsableByteArray() : (ParsableByteArray) arrayDeque.pop();
                parsableByteArray2.reset(parsableByteArray.bytesLeft());
                System.arraycopy(parsableByteArray.getData(), parsableByteArray.getPosition(), parsableByteArray2.getData(), 0, parsableByteArray2.bytesLeft());
                z zVar = this.f19902f;
                if (zVar != null && j7 == zVar.f19995e) {
                    zVar.f19994b.add(parsableByteArray2);
                    return;
                }
                ArrayDeque arrayDeque2 = this.f19899c;
                z zVar2 = arrayDeque2.isEmpty() ? new z() : (z) arrayDeque2.pop();
                zVar2.init(j7, parsableByteArray2);
                priorityQueue.add(zVar2);
                this.f19902f = zVar2;
                int i7 = this.f19901e;
                if (i7 != -1) {
                    a(i7);
                    return;
                }
                return;
            }
        }
        this.f19897a.consume(j7, parsableByteArray);
    }

    public void clear() {
        this.f19900d.clear();
    }

    public void flush() {
        a(0);
    }

    public int getMaxSize() {
        return this.f19901e;
    }

    public void setMaxSize(int i2) {
        P3.v.checkState(i2 >= 0);
        this.f19901e = i2;
        a(i2);
    }
}
