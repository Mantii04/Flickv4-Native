package U;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import androidx.core.view.ViewKt;
import androidx.customview.poolingcontainer.R;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final int f3739a = R.id.pooling_container_listener_holder_tag;

    /* renamed from: b, reason: collision with root package name */
    public static final int f3740b = R.id.is_pooling_container_tag;

    public static final void callPoolingContainerOnRelease(View view) {
        j.checkNotNullParameter(view, "<this>");
        for (View view2 : ViewKt.getAllViews(view)) {
            int i2 = f3739a;
            b bVar = (b) view2.getTag(i2);
            if (bVar == null) {
                bVar = new b();
                view2.setTag(i2, bVar);
            }
            bVar.onRelease();
        }
    }

    public static final void callPoolingContainerOnReleaseForChildren(ViewGroup viewGroup) {
        j.checkNotNullParameter(viewGroup, "<this>");
        for (View view : ViewGroupKt.getChildren(viewGroup)) {
            int i2 = f3739a;
            b bVar = (b) view.getTag(i2);
            if (bVar == null) {
                bVar = new b();
                view.setTag(i2, bVar);
            }
            bVar.onRelease();
        }
    }

    public static final void setPoolingContainer(View view, boolean z6) {
        j.checkNotNullParameter(view, "<this>");
        view.setTag(f3740b, Boolean.valueOf(z6));
    }
}
