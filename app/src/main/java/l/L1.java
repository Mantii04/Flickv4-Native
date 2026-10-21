package l;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import androidx.appcompat.R;
import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public final class L1 implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchView f17737a;

    public L1(SearchView searchView) {
        this.f17737a = searchView;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i2, int i7, int i8, int i9, int i10, int i11, int i12, int i13) {
        SearchView searchView = this.f17737a;
        View view2 = searchView.f5053G;
        if (view2.getWidth() > 1) {
            Resources resources = searchView.getContext().getResources();
            int paddingLeft = searchView.f5047A.getPaddingLeft();
            Rect rect = new Rect();
            boolean isLayoutRtl = z2.isLayoutRtl(searchView);
            int dimensionPixelSize = searchView.f5068V ? resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width) : 0;
            SearchView.SearchAutoComplete searchAutoComplete = searchView.f5085y;
            searchAutoComplete.getDropDownBackground().getPadding(rect);
            searchAutoComplete.setDropDownHorizontalOffset(isLayoutRtl ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            searchAutoComplete.setDropDownWidth((((view2.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }
}
