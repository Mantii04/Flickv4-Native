package x;

import android.view.ViewGroup;
import androidx.constraintlayout.widget.h;
import androidx.constraintlayout.widget.i;
import androidx.constraintlayout.widget.j;
import androidx.constraintlayout.widget.k;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public int f20716a;

    /* renamed from: b, reason: collision with root package name */
    public final j f20717b = new j();

    /* renamed from: c, reason: collision with root package name */
    public final i f20718c = new i();

    /* renamed from: d, reason: collision with root package name */
    public final h f20719d = new h();

    /* renamed from: e, reason: collision with root package name */
    public final k f20720e = new k();

    /* renamed from: f, reason: collision with root package name */
    public HashMap f20721f = new HashMap();

    public void applyTo(androidx.constraintlayout.widget.e eVar) {
        h hVar = this.f20719d;
        eVar.f5365e = hVar.f5448h;
        eVar.f5367f = hVar.f5450i;
        eVar.f5369g = hVar.f5452j;
        eVar.f5371h = hVar.f5454k;
        eVar.f5373i = hVar.f5456l;
        eVar.f5375j = hVar.f5458m;
        eVar.f5377k = hVar.f5460n;
        eVar.f5379l = hVar.f5462o;
        eVar.f5381m = hVar.f5464p;
        eVar.f5383n = hVar.f5465q;
        eVar.f5385o = hVar.f5466r;
        eVar.f5391s = hVar.f5467s;
        eVar.f5392t = hVar.f5468t;
        eVar.f5393u = hVar.f5469u;
        eVar.f5394v = hVar.f5470v;
        ((ViewGroup.MarginLayoutParams) eVar).leftMargin = hVar.f5413F;
        ((ViewGroup.MarginLayoutParams) eVar).rightMargin = hVar.f5414G;
        ((ViewGroup.MarginLayoutParams) eVar).topMargin = hVar.f5415H;
        ((ViewGroup.MarginLayoutParams) eVar).bottomMargin = hVar.f5416I;
        eVar.f5331A = hVar.f5425R;
        eVar.f5332B = hVar.f5424Q;
        eVar.f5396x = hVar.f5421N;
        eVar.f5398z = hVar.f5423P;
        eVar.f5335E = hVar.f5471w;
        eVar.f5336F = hVar.f5472x;
        eVar.f5387p = hVar.f5474z;
        eVar.f5389q = hVar.f5408A;
        eVar.f5390r = hVar.f5409B;
        eVar.f5337G = hVar.f5473y;
        eVar.f5350T = hVar.f5410C;
        eVar.f5351U = hVar.f5411D;
        eVar.f5339I = hVar.f5427T;
        eVar.f5338H = hVar.f5428U;
        eVar.f5341K = hVar.f5430W;
        eVar.f5340J = hVar.f5429V;
        eVar.f5353W = hVar.f5457l0;
        eVar.f5354X = hVar.f5459m0;
        eVar.f5342L = hVar.f5431X;
        eVar.f5343M = hVar.f5432Y;
        eVar.f5346P = hVar.f5433Z;
        eVar.f5347Q = hVar.f5435a0;
        eVar.f5344N = hVar.f5437b0;
        eVar.f5345O = hVar.f5439c0;
        eVar.f5348R = hVar.f5441d0;
        eVar.f5349S = hVar.f5443e0;
        eVar.f5352V = hVar.f5412E;
        eVar.f5361c = hVar.f5444f;
        eVar.f5357a = hVar.f5440d;
        eVar.f5359b = hVar.f5442e;
        ((ViewGroup.MarginLayoutParams) eVar).width = hVar.f5436b;
        ((ViewGroup.MarginLayoutParams) eVar).height = hVar.f5438c;
        String str = hVar.f5455k0;
        if (str != null) {
            eVar.f5355Y = str;
        }
        eVar.f5356Z = hVar.f5463o0;
        eVar.setMarginStart(hVar.f5418K);
        eVar.setMarginEnd(hVar.f5417J);
        eVar.validate();
    }

    public d clone() {
        d dVar = new d();
        dVar.f20719d.copyFrom(this.f20719d);
        dVar.f20718c.copyFrom(this.f20718c);
        dVar.f20717b.copyFrom(this.f20717b);
        dVar.f20720e.copyFrom(this.f20720e);
        dVar.f20716a = this.f20716a;
        return dVar;
    }
}
