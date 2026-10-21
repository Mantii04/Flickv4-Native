package m4;

import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.os.Looper;
import android.provider.Settings;
import com.squareup.picasso.Picasso$Priority;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.Future;

/* renamed from: m4.p, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1337p {

    /* renamed from: a, reason: collision with root package name */
    public final Context f18690a;

    /* renamed from: b, reason: collision with root package name */
    public final G f18691b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1338q f18692c;

    /* renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f18693d;

    /* renamed from: e, reason: collision with root package name */
    public final WeakHashMap f18694e;

    /* renamed from: f, reason: collision with root package name */
    public final WeakHashMap f18695f;

    /* renamed from: g, reason: collision with root package name */
    public final LinkedHashSet f18696g;

    /* renamed from: h, reason: collision with root package name */
    public final com.squareup.picasso.b f18697h;

    /* renamed from: i, reason: collision with root package name */
    public final y f18698i;

    /* renamed from: j, reason: collision with root package name */
    public final C1342v f18699j;

    /* renamed from: k, reason: collision with root package name */
    public final P f18700k;

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f18701l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f18702m;

    public C1337p(Context context, G g7, y yVar, InterfaceC1338q interfaceC1338q, C1342v c1342v, P p6) {
        HandlerThreadC1335n handlerThreadC1335n = new HandlerThreadC1335n("Picasso-Dispatcher", 10);
        handlerThreadC1335n.start();
        Looper looper = handlerThreadC1335n.getLooper();
        StringBuilder sb = W.f18670a;
        T t6 = new T(looper);
        t6.sendMessageDelayed(t6.obtainMessage(), 1000L);
        this.f18690a = context;
        this.f18691b = g7;
        this.f18693d = new LinkedHashMap();
        this.f18694e = new WeakHashMap();
        this.f18695f = new WeakHashMap();
        this.f18696g = new LinkedHashSet();
        this.f18697h = new com.squareup.picasso.b(handlerThreadC1335n.getLooper(), this);
        this.f18692c = interfaceC1338q;
        this.f18698i = yVar;
        this.f18699j = c1342v;
        this.f18700k = p6;
        this.f18701l = new ArrayList(4);
        try {
            Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0);
        } catch (NullPointerException | SecurityException unused) {
        }
        this.f18702m = context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0;
        C1336o c1336o = new C1336o(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
        C1337p c1337p = c1336o.f18689a;
        if (c1337p.f18702m) {
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        }
        c1337p.f18690a.registerReceiver(c1336o, intentFilter);
    }

    public final void a(com.squareup.picasso.a aVar) {
        Future future = aVar.f13432v;
        if (future == null || !future.isCancelled()) {
            Bitmap bitmap = aVar.f13431u;
            if (bitmap != null) {
                bitmap.prepareToDraw();
            }
            this.f18701l.add(aVar);
            com.squareup.picasso.b bVar = this.f18697h;
            if (bVar.hasMessages(7)) {
                return;
            }
            bVar.sendEmptyMessageDelayed(7, 200L);
        }
    }

    public final void b(com.squareup.picasso.a aVar) {
        com.squareup.picasso.b bVar = this.f18697h;
        bVar.sendMessage(bVar.obtainMessage(4, aVar));
    }

    public final void c(com.squareup.picasso.a aVar, boolean z6) {
        aVar.f13421e.getClass();
        this.f18693d.remove(aVar.f13425n);
        a(aVar);
    }

    public final void d(C1339s c1339s, boolean z6) {
        C1339s c1339s2;
        com.squareup.picasso.a aVar;
        C1337p c1337p;
        if (this.f18696g.contains(c1339s.f18708f)) {
            this.f18695f.put(c1339s.a(), c1339s);
            return;
        }
        LinkedHashMap linkedHashMap = this.f18693d;
        String str = c1339s.f18707e;
        com.squareup.picasso.a aVar2 = (com.squareup.picasso.a) linkedHashMap.get(str);
        I i2 = c1339s.f18704b;
        if (aVar2 != null) {
            aVar2.f13421e.getClass();
            if (aVar2.f13429s == null) {
                aVar2.f13429s = c1339s;
                return;
            }
            if (aVar2.f13430t == null) {
                aVar2.f13430t = new ArrayList(3);
            }
            aVar2.f13430t.add(c1339s);
            Picasso$Priority picasso$Priority = i2.f18629j;
            if (picasso$Priority.ordinal() > aVar2.f13419A.ordinal()) {
                aVar2.f13419A = picasso$Priority;
                return;
            }
            return;
        }
        G g7 = this.f18691b;
        if (g7.isShutdown()) {
            return;
        }
        D d7 = c1339s.f18703a;
        Object obj = com.squareup.picasso.a.f13415B;
        List list = d7.f18595b;
        int size = list.size();
        int i7 = 0;
        while (true) {
            C1342v c1342v = this.f18699j;
            P p6 = this.f18700k;
            if (i7 >= size) {
                c1339s2 = c1339s;
                c1337p = this;
                aVar = new com.squareup.picasso.a(d7, c1337p, c1342v, p6, c1339s2, com.squareup.picasso.a.f13418E);
                break;
            } else {
                L l7 = (L) list.get(i7);
                if (l7.canHandleRequest(i2)) {
                    c1337p = this;
                    c1339s2 = c1339s;
                    aVar = new com.squareup.picasso.a(d7, c1337p, c1342v, p6, c1339s2, l7);
                    break;
                }
                i7++;
            }
        }
        aVar.f13432v = g7.submit(aVar);
        linkedHashMap.put(str, aVar);
        if (z6) {
            c1337p.f18694e.remove(c1339s2.a());
        }
    }
}
