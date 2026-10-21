package q3;

import N.h;
import N.n;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.material.R;
import com.google.android.material.chip.Chip;
import java.util.List;

/* renamed from: q3.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1520d extends W.d {

    /* renamed from: q, reason: collision with root package name */
    public final /* synthetic */ Chip f19582q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1520d(Chip chip, Chip chip2) {
        super(chip2);
        this.f19582q = chip;
    }

    @Override // W.d
    public int getVirtualViewAt(float f3, float f7) {
        RectF closeIconTouchBounds;
        int i2 = Chip.f12557F;
        Chip chip = this.f19582q;
        if (!chip.c()) {
            return 0;
        }
        closeIconTouchBounds = chip.getCloseIconTouchBounds();
        return closeIconTouchBounds.contains(f3, f7) ? 1 : 0;
    }

    @Override // W.d
    public void getVisibleVirtualViews(List<Integer> list) {
        list.add(0);
        int i2 = Chip.f12557F;
        Chip chip = this.f19582q;
        if (chip.c() && chip.isCloseIconVisible() && chip.f12569q != null) {
            list.add(1);
        }
    }

    @Override // W.d
    public boolean onPerformActionForVirtualView(int i2, int i7, Bundle bundle) {
        if (i7 != 16) {
            return false;
        }
        Chip chip = this.f19582q;
        if (i2 == 0) {
            return chip.performClick();
        }
        if (i2 == 1) {
            return chip.performCloseIconClick();
        }
        return false;
    }

    @Override // W.d
    public void onPopulateNodeForHost(n nVar) {
        Chip chip = this.f19582q;
        nVar.setCheckable(chip.isCheckable());
        nVar.setClickable(chip.isClickable());
        nVar.setClassName(chip.getAccessibilityClassName());
        nVar.setText(chip.getText());
    }

    @Override // W.d
    public void onPopulateNodeForVirtualView(int i2, n nVar) {
        Rect closeIconTouchBoundsInt;
        if (i2 != 1) {
            nVar.setContentDescription("");
            nVar.setBoundsInParent(Chip.f12558G);
            return;
        }
        Chip chip = this.f19582q;
        CharSequence closeIconContentDescription = chip.getCloseIconContentDescription();
        if (closeIconContentDescription != null) {
            nVar.setContentDescription(closeIconContentDescription);
        } else {
            CharSequence text = chip.getText();
            nVar.setContentDescription(chip.getContext().getString(R.string.mtrl_chip_close_icon_content_description, TextUtils.isEmpty(text) ? "" : text).trim());
        }
        closeIconTouchBoundsInt = chip.getCloseIconTouchBoundsInt();
        nVar.setBoundsInParent(closeIconTouchBoundsInt);
        nVar.addAction(h.f2123g);
        nVar.setEnabled(chip.isEnabled());
    }

    @Override // W.d
    public void onVirtualViewKeyboardFocusChanged(int i2, boolean z6) {
        if (i2 == 1) {
            Chip chip = this.f19582q;
            chip.f12574v = z6;
            chip.refreshDrawableState();
        }
    }
}
