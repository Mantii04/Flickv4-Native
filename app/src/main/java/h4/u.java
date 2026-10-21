package h4;

import android.os.Handler;
import android.os.Message;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class u extends Handler {
    @Override // android.os.Handler
    public void handleMessage(Message message) {
        boolean z6;
        boolean z7;
        ArrayList arrayList = (ArrayList) w.f16588C.get();
        ArrayList arrayList2 = (ArrayList) w.f16590E.get();
        int i2 = message.what;
        if (i2 != 0) {
            if (i2 == 1) {
                z6 = true;
            }
        }
        ArrayList arrayList3 = (ArrayList) w.f16589D.get();
        z6 = arrayList.size() <= 0 && arrayList2.size() <= 0;
        while (arrayList3.size() > 0) {
            ArrayList arrayList4 = (ArrayList) arrayList3.clone();
            arrayList3.clear();
            int size = arrayList4.size();
            for (int i7 = 0; i7 < size; i7++) {
                w wVar = (w) arrayList4.get(i7);
                if (wVar.f16607v == 0) {
                    w.a(wVar);
                } else {
                    arrayList2.add(wVar);
                }
            }
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        ArrayList arrayList5 = (ArrayList) w.f16592G.get();
        ArrayList arrayList6 = (ArrayList) w.f16591F.get();
        int size2 = arrayList2.size();
        int i8 = 0;
        while (i8 < size2) {
            w wVar2 = (w) arrayList2.get(i8);
            if (wVar2.f16601p) {
                long j7 = currentAnimationTimeMillis - wVar2.f16602q;
                z7 = z6;
                long j8 = wVar2.f16607v;
                if (j7 > j8) {
                    wVar2.f16596e = currentAnimationTimeMillis - (j7 - j8);
                    wVar2.f16603r = 1;
                    arrayList5.add(wVar2);
                }
            } else {
                wVar2.f16601p = true;
                wVar2.f16602q = currentAnimationTimeMillis;
                z7 = z6;
            }
            i8++;
            z6 = z7;
        }
        boolean z8 = z6;
        int size3 = arrayList5.size();
        if (size3 > 0) {
            for (int i9 = 0; i9 < size3; i9++) {
                w wVar3 = (w) arrayList5.get(i9);
                w.a(wVar3);
                wVar3.f16604s = true;
                arrayList2.remove(wVar3);
            }
            arrayList5.clear();
        }
        int size4 = arrayList.size();
        int i10 = 0;
        while (i10 < size4) {
            w wVar4 = (w) arrayList.get(i10);
            if (wVar4.b(currentAnimationTimeMillis)) {
                arrayList6.add(wVar4);
            }
            if (arrayList.size() == size4) {
                i10++;
            } else {
                size4--;
                arrayList6.remove(wVar4);
            }
        }
        if (arrayList6.size() > 0) {
            for (int i11 = 0; i11 < arrayList6.size(); i11++) {
                ((w) arrayList6.get(i11)).c();
            }
            arrayList6.clear();
        }
        if (z8 && (!arrayList.isEmpty() || !arrayList2.isEmpty())) {
            sendEmptyMessageDelayed(1, Math.max(0L, w.f16594I - (AnimationUtils.currentAnimationTimeMillis() - currentAnimationTimeMillis)));
        }
    }
}
