package z4;

import android.content.Intent;
import android.view.View;
import android.widget.Toast;
import flix.com.vision.activities.adult.AdultCategoriesActivity;
import flix.com.vision.activities.adult.AdultZonePINEntryActivity;

/* renamed from: z4.p, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ViewOnClickListenerC2007p implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21464b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AdultZonePINEntryActivity f21465e;

    public /* synthetic */ ViewOnClickListenerC2007p(AdultZonePINEntryActivity adultZonePINEntryActivity, int i2) {
        this.f21464b = i2;
        this.f21465e = adultZonePINEntryActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AdultZonePINEntryActivity adultZonePINEntryActivity = this.f21465e;
        switch (this.f21464b) {
            case 0:
                int i2 = AdultZonePINEntryActivity.f15396t;
                adultZonePINEntryActivity.finish();
                break;
            case 1:
                int i7 = AdultZonePINEntryActivity.f15396t;
                adultZonePINEntryActivity.e();
                break;
            case 2:
                int i8 = AdultZonePINEntryActivity.f15396t;
                adultZonePINEntryActivity.finish();
                break;
            default:
                int i9 = AdultZonePINEntryActivity.f15396t;
                adultZonePINEntryActivity.finish();
                adultZonePINEntryActivity.startActivity(new Intent(adultZonePINEntryActivity, (Class<?>) AdultCategoriesActivity.class));
                Toast.makeText(adultZonePINEntryActivity.getBaseContext(), "Login Successful!", 1).show();
                break;
        }
    }
}
