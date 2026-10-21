package e0;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.widget.TextView;
import androidx.emoji2.text.p;
import java.lang.ref.WeakReference;

/* renamed from: e0.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0851e extends androidx.emoji2.text.l {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f13914a;

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f13915b;

    public C0851e(TextView textView, f fVar) {
        this.f13914a = new WeakReference(textView);
        this.f13915b = new WeakReference(fVar);
    }

    @Override // androidx.emoji2.text.l
    public void onInitialized() {
        InputFilter[] filters;
        CharSequence text;
        CharSequence process;
        super.onInitialized();
        TextView textView = (TextView) this.f13914a.get();
        InputFilter inputFilter = (InputFilter) this.f13915b.get();
        if (inputFilter == null || textView == null || (filters = textView.getFilters()) == null) {
            return;
        }
        for (InputFilter inputFilter2 : filters) {
            if (inputFilter2 == inputFilter) {
                if (!textView.isAttachedToWindow() || text == (process = p.get().process((text = textView.getText())))) {
                    return;
                }
                int selectionStart = Selection.getSelectionStart(process);
                int selectionEnd = Selection.getSelectionEnd(process);
                textView.setText(process);
                if (process instanceof Spannable) {
                    Spannable spannable = (Spannable) process;
                    if (selectionStart >= 0 && selectionEnd >= 0) {
                        Selection.setSelection(spannable, selectionStart, selectionEnd);
                        return;
                    } else if (selectionStart >= 0) {
                        Selection.setSelection(spannable, selectionStart);
                        return;
                    } else {
                        if (selectionEnd >= 0) {
                            Selection.setSelection(spannable, selectionEnd);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
        }
    }
}
