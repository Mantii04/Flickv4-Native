package S4;

import android.view.View;
import android.widget.AdapterView;
import flix.com.vision.App;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class b implements AdapterView.OnItemSelectedListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f3381b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ o f3382e;

    public b(o oVar, ArrayList arrayList) {
        this.f3382e = oVar;
        this.f3381b = arrayList;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j7) {
        this.f3382e.getClass();
        String str = (String) this.f3381b.get(i2);
        if (str.equals("All")) {
            str = "";
        }
        App.getInstance().f14440s.edit().putString("type_anime", str).apply();
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
        this.f3382e.getClass();
    }
}
