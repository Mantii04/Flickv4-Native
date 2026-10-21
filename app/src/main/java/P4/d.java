package P4;

import android.util.Log;
import flix.com.vision.models.Movie;
import io.reactivex.functions.Action;

/* loaded from: classes2.dex */
public final /* synthetic */ class d implements Action {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2720b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Movie f2721e;

    public /* synthetic */ d(Movie movie, int i2) {
        this.f2720b = i2;
        this.f2721e = movie;
    }

    @Override // io.reactivex.functions.Action
    public final void run() {
        switch (this.f2720b) {
            case 0:
                Log.d("Trakt", "Added to Collection: " + this.f2721e.getTitle());
                break;
            case 1:
                Log.d("Trakt", "Added to Collection: " + this.f2721e.getTitle());
                break;
            default:
                Log.d("Trakt", "Item marked as watched on server: " + this.f2721e.getTitle());
                break;
        }
    }
}
