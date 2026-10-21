package A4;

import android.graphics.Typeface;
import android.view.View;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.SearchActivityTV;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.leanback.MainActivityLeanback;

/* loaded from: classes2.dex */
public final /* synthetic */ class o implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f82b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Q4.d f83e;

    public /* synthetic */ o(Q4.d dVar, int i2) {
        this.f82b = i2;
        this.f83e = dVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Q4.d dVar = this.f83e;
        switch (this.f82b) {
            case 0:
                int i2 = MainActivityLeanback.f15476I;
                dVar.dismiss();
                break;
            case 1:
                Typeface typeface = Q4.d.f2935Y;
                dVar.dismiss();
                break;
            case 2:
                Typeface typeface2 = Q4.d.f2935Y;
                dVar.dismiss();
                break;
            case 3:
                Typeface typeface3 = Q4.d.f2935Y;
                dVar.dismiss();
                dVar.f2965f.onClick(view);
                break;
            case 4:
                Typeface typeface4 = Q4.d.f2935Y;
                dVar.dismiss();
                dVar.f2964e.onClick(view);
                break;
            case 5:
                Typeface typeface5 = Q4.d.f2935Y;
                dVar.dismiss();
                dVar.f2963b.onClick(view);
                break;
            case 6:
                int i7 = MainActivity.f14747T;
                dVar.dismiss();
                break;
            case 7:
                int i8 = MainActivity.f14747T;
                dVar.dismiss();
                break;
            case 8:
                int i9 = MainActivity.f14747T;
                dVar.dismiss();
                break;
            case 9:
                int i10 = MainActivity.f14747T;
                dVar.dismiss();
                break;
            case 10:
                int i11 = MainActivity.f14747T;
                dVar.dismiss();
                break;
            case 11:
                int i12 = MainActivity.f14747T;
                dVar.dismiss();
                break;
            case 12:
                int i13 = SearchActivityTV.f14981I;
                dVar.dismiss();
                break;
            case 13:
                int i14 = SettingsActivity.f15080c2;
                dVar.dismiss();
                break;
            default:
                int i15 = SettingsActivity.f15080c2;
                dVar.dismiss();
                break;
        }
    }
}
