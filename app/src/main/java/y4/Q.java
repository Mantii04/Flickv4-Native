package y4;

import android.content.Intent;
import android.view.View;
import com.github.ybq.android.spinkit.SpinKitView;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.activities.SettingsActivity;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public final /* synthetic */ class Q implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21161b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LinksActivity f21162e;

    public /* synthetic */ Q(LinksActivity linksActivity, int i2) {
        this.f21161b = i2;
        this.f21162e = linksActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        LinksActivity linksActivity = this.f21162e;
        switch (this.f21161b) {
            case 0:
                int i2 = LinksActivity.f14702b0;
                linksActivity.getClass();
                EventBus.getDefault().post(new T4.e());
                SpinKitView spinKitView = linksActivity.f14738r;
                if (spinKitView != null) {
                    spinKitView.setVisibility(8);
                }
                linksActivity.f14733j.setVisibility(8);
                break;
            case 1:
                int i7 = LinksActivity.f14702b0;
                linksActivity.finish();
                linksActivity.startActivity(linksActivity.getIntent());
                break;
            case 2:
                int i8 = LinksActivity.f14702b0;
                linksActivity.getClass();
                linksActivity.startActivity(new Intent(linksActivity, (Class<?>) SettingsActivity.class));
                break;
            default:
                int i9 = LinksActivity.f14702b0;
                linksActivity.getClass();
                linksActivity.startActivity(new Intent(linksActivity, (Class<?>) SettingsActivity.class));
                break;
        }
    }
}
