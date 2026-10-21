package S4;

import android.view.View;
import android.widget.AdapterView;
import flix.com.vision.App;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class d implements AdapterView.OnItemSelectedListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f3385b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ o f3386e;

    public d(o oVar, ArrayList arrayList) {
        this.f3386e = oVar;
        this.f3385b = arrayList;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j7) {
        this.f3386e.getClass();
        String str = (String) this.f3385b.get(i2);
        if (str.equals("All")) {
            str = "";
        }
        App.getInstance().f14440s.edit().putString("year_anime", str).apply();
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
        this.f3386e.getClass();
    }
}
