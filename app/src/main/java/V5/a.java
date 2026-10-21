package V5;

import java.util.Arrays;
import kotlin.Result;
import kotlin.jvm.internal.j;
import u5.C1711j;
import y5.InterfaceC1944c;

/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: b, reason: collision with root package name */
    public c[] f4023b;

    /* renamed from: e, reason: collision with root package name */
    public int f4024e;

    /* renamed from: f, reason: collision with root package name */
    public int f4025f;

    public final c allocateSlot() {
        c cVar;
        synchronized (this) {
            try {
                c[] cVarArr = this.f4023b;
                if (cVarArr == null) {
                    cVarArr = createSlotArray(2);
                    this.f4023b = cVarArr;
                } else if (this.f4024e >= cVarArr.length) {
                    Object[] copyOf = Arrays.copyOf(cVarArr, cVarArr.length * 2);
                    j.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                    this.f4023b = (c[]) copyOf;
                    cVarArr = (c[]) copyOf;
                }
                int i2 = this.f4025f;
                do {
                    cVar = cVarArr[i2];
                    if (cVar == null) {
                        cVar = createSlot();
                        cVarArr[i2] = cVar;
                    }
                    i2++;
                    if (i2 >= cVarArr.length) {
                        i2 = 0;
                    }
                    j.checkNotNull(cVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                } while (!cVar.allocateLocked(this));
                this.f4025f = i2;
                this.f4024e++;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }

    public abstract c createSlot();

    public abstract c[] createSlotArray(int i2);

    public final void freeSlot(c cVar) {
        int i2;
        InterfaceC1944c[] freeLocked;
        synchronized (this) {
            try {
                int i7 = this.f4024e - 1;
                this.f4024e = i7;
                if (i7 == 0) {
                    this.f4025f = 0;
                }
                j.checkNotNull(cVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                freeLocked = cVar.freeLocked(this);
            } catch (Throwable th) {
                throw th;
            }
        }
        for (InterfaceC1944c interfaceC1944c : freeLocked) {
            if (interfaceC1944c != null) {
                int i8 = Result.f17390b;
                interfaceC1944c.resumeWith(Result.m103constructorimpl(C1711j.f20329a));
            }
        }
    }

    public final c[] getSlots() {
        return this.f4023b;
    }
}
