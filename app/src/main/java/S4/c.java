package S4;

import android.view.View;
import android.widget.AdapterView;
import flix.com.vision.App;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class c implements AdapterView.OnItemSelectedListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f3383b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ o f3384e;

    public c(o oVar, ArrayList arrayList) {
        this.f3384e = oVar;
        this.f3383b = arrayList;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j7) {
        this.f3384e.getClass();
        String str = (String) this.f3383b.get(i2);
        if (str.equals("All")) {
            str = "";
        }
        App.getInstance().f14440s.edit().putString("lang_anime", str).apply();
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
        this.f3384e.getClass();
    }
}
