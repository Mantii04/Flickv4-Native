package B4;

import android.util.Log;
import android.widget.Toast;
import e.AbstractActivityC0842v;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.player.WebPlayerActivity;
import flix.com.vision.activities.player.WebPlayerActivitySuper;
import io.reactivex.functions.Action;

/* loaded from: classes2.dex */
public final /* synthetic */ class N implements Action {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f237b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AbstractActivityC0842v f238e;

    public /* synthetic */ N(AbstractActivityC0842v abstractActivityC0842v, int i2) {
        this.f237b = i2;
        this.f238e = abstractActivityC0842v;
    }

    @Override // io.reactivex.functions.Action
    public final void run() {
        AbstractActivityC0842v abstractActivityC0842v = this.f238e;
        switch (this.f237b) {
            case 0:
                int i2 = WebPlayerActivity.f15715O;
                Log.d("Trakt", "Checked in: " + ((WebPlayerActivity) abstractActivityC0842v).f15738r.getTitle());
                break;
            case 1:
                int i7 = WebPlayerActivitySuper.f15747N;
                Log.d("Trakt", "Checked in: " + ((WebPlayerActivitySuper) abstractActivityC0842v).f15769r.getTitle());
                break;
            default:
                int i8 = MainActivity.f14747T;
                MainActivity mainActivity = (MainActivity) abstractActivityC0842v;
                mainActivity.getClass();
                Toast.makeText(mainActivity, "Trakt Sync Complete!", 1).show();
                break;
        }
    }
}
