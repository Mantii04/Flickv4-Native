package J;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public abstract class s {
    public static Typeface buildTypeface(Context context, CancellationSignal cancellationSignal, q[] qVarArr) {
        return D.i.createFromFontInfo(context, cancellationSignal, qVarArr, 0);
    }

    public static p fetchFonts(Context context, CancellationSignal cancellationSignal, i iVar) throws PackageManager.NameNotFoundException {
        return h.a(context, cancellationSignal, iVar);
    }

    public static Typeface requestFont(Context context, i iVar, int i2, boolean z6, int i7, Handler handler, r rVar) {
        C.k kVar = new C.k(rVar, handler);
        if (z6) {
            p.p pVar = o.f1417a;
            String str = iVar.f1404e + "-" + i2;
            Typeface typeface = (Typeface) o.f1417a.get(str);
            if (typeface != null) {
                handler.post(new a(rVar, typeface));
                return typeface;
            }
            if (i7 == -1) {
                n a7 = o.a(str, context, iVar, i2);
                kVar.t(a7);
                return a7.f1415a;
            }
            try {
                try {
                    try {
                        n nVar = (n) o.f1418b.submit(new j(str, context, iVar, i2)).get(i7, TimeUnit.MILLISECONDS);
                        kVar.t(nVar);
                        return nVar.f1415a;
                    } catch (InterruptedException e3) {
                        throw e3;
                    }
                } catch (ExecutionException e7) {
                    throw new RuntimeException(e7);
                } catch (TimeoutException unused) {
                    throw new InterruptedException("timeout");
                }
            } catch (InterruptedException unused2) {
                ((Handler) kVar.f326b).post(new b((r) kVar.f325a, -3));
                return null;
            }
        }
        p.p pVar2 = o.f1417a;
        String str2 = iVar.f1404e + "-" + i2;
        Typeface typeface2 = (Typeface) o.f1417a.get(str2);
        if (typeface2 != null) {
            handler.post(new a(rVar, typeface2));
            return typeface2;
        }
        k kVar2 = new k(kVar);
        synchronized (o.f1419c) {
            try {
                p.q qVar = o.f1420d;
                ArrayList arrayList = (ArrayList) qVar.get(str2);
                if (arrayList != null) {
                    arrayList.add(kVar2);
                    return null;
                }
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(kVar2);
                qVar.put(str2, arrayList2);
                l lVar = new l(str2, context, iVar, i2);
                ThreadPoolExecutor threadPoolExecutor = o.f1418b;
                m mVar = new m(str2);
                Handler handler2 = Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler();
                w wVar = new w();
                wVar.f1431b = lVar;
                wVar.f1432e = mVar;
                wVar.f1433f = handler2;
                threadPoolExecutor.execute(wVar);
                return null;
            } finally {
            }
        }
    }
}
