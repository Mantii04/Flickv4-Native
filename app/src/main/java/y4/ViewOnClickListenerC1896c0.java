package y4;

import android.view.View;
import android.widget.Toast;
import flix.com.vision.App;
import flix.com.vision.activities.MainActivity;

/* renamed from: y4.c0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ViewOnClickListenerC1896c0 implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21212b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MainActivity f21213e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Q4.d f21214f;

    public /* synthetic */ ViewOnClickListenerC1896c0(MainActivity mainActivity, Q4.d dVar, int i2) {
        this.f21212b = i2;
        this.f21213e = mainActivity;
        this.f21214f = dVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Q4.d dVar = this.f21214f;
        MainActivity mainActivity = this.f21213e;
        switch (this.f21212b) {
            case 0:
                int i2 = MainActivity.f14747T;
                mainActivity.getClass();
                dVar.dismiss();
                mainActivity.h("https://discord.gg/tKjc4PTvxu");
                break;
            case 1:
                int i7 = MainActivity.f14747T;
                mainActivity.getClass();
                dVar.dismiss();
                if (!App.getInstance().f14439r.clearFavorites()) {
                    Toast.makeText(mainActivity.getBaseContext(), "An error occurred", 0).show();
                    break;
                } else {
                    Toast.makeText(mainActivity.getBaseContext(), "Favorites cleared", 0).show();
                    mainActivity.recreate();
                    break;
                }
            case 2:
                int i8 = MainActivity.f14747T;
                mainActivity.getClass();
                dVar.dismiss();
                mainActivity.h("https://twitter.com/FlixVisionApp");
                break;
            default:
                int i9 = MainActivity.f14747T;
                mainActivity.getClass();
                dVar.dismiss();
                if (!App.getInstance().f14439r.clearHistory()) {
                    Toast.makeText(mainActivity.getBaseContext(), "An error occurred", 0).show();
                    break;
                } else {
                    Toast.makeText(mainActivity.getBaseContext(), "History cleared", 0).show();
                    mainActivity.recreate();
                    break;
                }
        }
    }
}
