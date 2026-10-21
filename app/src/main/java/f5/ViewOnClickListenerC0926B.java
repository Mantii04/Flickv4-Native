package f5;

import android.content.Intent;
import android.view.View;
import android.widget.Toast;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.tv.TVCategoriesActivity;
import flix.com.vision.tv.TVCategorySearchActivity;

/* renamed from: f5.B, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ViewOnClickListenerC0926B implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f14377b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TVCategoriesActivity f14378e;

    public /* synthetic */ ViewOnClickListenerC0926B(TVCategoriesActivity tVCategoriesActivity, int i2) {
        this.f14377b = i2;
        this.f14378e = tVCategoriesActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        TVCategoriesActivity tVCategoriesActivity = this.f14378e;
        switch (this.f14377b) {
            case 0:
                if (!tVCategoriesActivity.f16260E) {
                    tVCategoriesActivity.finish();
                    break;
                } else {
                    Toast.makeText(tVCategoriesActivity.getBaseContext(), "Yep, we made it!", 0).show();
                    break;
                }
            case 1:
                int i2 = TVCategoriesActivity.f16255H;
                tVCategoriesActivity.getClass();
                tVCategoriesActivity.startActivity(new Intent(tVCategoriesActivity, (Class<?>) TVCategorySearchActivity.class));
                break;
            default:
                int i7 = TVCategoriesActivity.f16255H;
                tVCategoriesActivity.getClass();
                tVCategoriesActivity.startActivity(new Intent(tVCategoriesActivity, (Class<?>) SettingsActivity.class));
                break;
        }
    }
}
