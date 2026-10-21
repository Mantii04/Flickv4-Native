package M;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: M.o0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0179o0 {

    /* renamed from: d, reason: collision with root package name */
    public static final ArrayList f2059d = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public WeakHashMap f2060a;

    /* renamed from: b, reason: collision with root package name */
    public SparseArray f2061b;

    /* renamed from: c, reason: collision with root package name */
    public WeakReference f2062c;

    public final View a(View view) {
        int size;
        WeakHashMap weakHashMap = this.f2060a;
        if (weakHashMap == null || !weakHashMap.containsKey(view)) {
            return null;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View a7 = a(viewGroup.getChildAt(childCount));
                if (a7 != null) {
                    return a7;
                }
            }
        }
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
        if (arrayList == null || arrayList.size() - 1 < 0) {
            return null;
        }
        arrayList.get(size).getClass();
        throw new ClassCastException();
    }
}
