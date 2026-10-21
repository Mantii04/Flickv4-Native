package k0;

import androidx.leanback.widget.picker.DatePicker;

/* renamed from: k0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1086a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f17217b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DatePicker f17218e;

    public RunnableC1086a(DatePicker datePicker, boolean z6) {
        this.f17218e = datePicker;
        this.f17217b = z6;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z6;
        boolean z7;
        DatePicker datePicker = this.f17218e;
        int[] iArr = {datePicker.f6886D, datePicker.f6885C, datePicker.f6887E};
        boolean z8 = true;
        boolean z9 = true;
        for (int i2 = 2; i2 >= 0; i2--) {
            int i7 = iArr[i2];
            if (i7 >= 0) {
                int i8 = DatePicker.f6882L[i2];
                f columnAt = datePicker.getColumnAt(i7);
                if (z8) {
                    int i9 = datePicker.f6890H.get(i8);
                    if (i9 != columnAt.getMinValue()) {
                        columnAt.setMinValue(i9);
                        z6 = true;
                    }
                    z6 = false;
                } else {
                    int actualMinimum = datePicker.f6892J.getActualMinimum(i8);
                    if (actualMinimum != columnAt.getMinValue()) {
                        columnAt.setMinValue(actualMinimum);
                        z6 = true;
                    }
                    z6 = false;
                }
                if (z9) {
                    int i10 = datePicker.f6891I.get(i8);
                    if (i10 != columnAt.getMaxValue()) {
                        columnAt.setMaxValue(i10);
                        z7 = true;
                    }
                    z7 = false;
                } else {
                    int actualMaximum = datePicker.f6892J.getActualMaximum(i8);
                    if (actualMaximum != columnAt.getMaxValue()) {
                        columnAt.setMaxValue(actualMaximum);
                        z7 = true;
                    }
                    z7 = false;
                }
                boolean z10 = z6 | z7;
                z8 &= datePicker.f6892J.get(i8) == datePicker.f6890H.get(i8);
                z9 &= datePicker.f6892J.get(i8) == datePicker.f6891I.get(i8);
                if (z10) {
                    datePicker.setColumnAt(iArr[i2], columnAt);
                }
                datePicker.setColumnValue(iArr[i2], datePicker.f6892J.get(i8), this.f17217b);
            }
        }
    }
}
