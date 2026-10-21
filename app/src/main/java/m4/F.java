package m4;

import com.squareup.picasso.Picasso$Priority;
import java.util.concurrent.FutureTask;

/* loaded from: classes2.dex */
public final class F extends FutureTask implements Comparable {

    /* renamed from: b, reason: collision with root package name */
    public final com.squareup.picasso.a f18609b;

    public F(com.squareup.picasso.a aVar) {
        super(aVar, null);
        this.f18609b = aVar;
    }

    @Override // java.lang.Comparable
    public int compareTo(F f3) {
        com.squareup.picasso.a aVar = this.f18609b;
        Picasso$Priority picasso$Priority = aVar.f13419A;
        com.squareup.picasso.a aVar2 = f3.f18609b;
        Picasso$Priority picasso$Priority2 = aVar2.f13419A;
        return picasso$Priority == picasso$Priority2 ? aVar.f13420b - aVar2.f13420b : picasso$Priority2.ordinal() - picasso$Priority.ordinal();
    }
}
