package m3;

import M.C0152b;
import N.m;
import N.n;
import android.view.View;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;

/* loaded from: classes2.dex */
public final class f extends C0152b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ MaterialButtonToggleGroup f18581d;

    public f(MaterialButtonToggleGroup materialButtonToggleGroup) {
        this.f18581d = materialButtonToggleGroup;
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityNodeInfo(View view, n nVar) {
        int i2;
        super.onInitializeAccessibilityNodeInfo(view, nVar);
        int i7 = MaterialButtonToggleGroup.f12532t;
        MaterialButtonToggleGroup materialButtonToggleGroup = this.f18581d;
        materialButtonToggleGroup.getClass();
        if (view instanceof MaterialButton) {
            i2 = 0;
            for (int i8 = 0; i8 < materialButtonToggleGroup.getChildCount(); i8++) {
                if (materialButtonToggleGroup.getChildAt(i8) == view) {
                    break;
                }
                if ((materialButtonToggleGroup.getChildAt(i8) instanceof MaterialButton) && materialButtonToggleGroup.c(i8)) {
                    i2++;
                }
            }
        }
        i2 = -1;
        nVar.setCollectionItemInfo(m.obtain(0, 1, i2, 1, false, ((MaterialButton) view).isChecked()));
    }
}
