package S;

import M.C0174m;
import M.M;
import android.content.ClipData;
import android.content.Context;
import android.text.Editable;
import android.text.Selection;
import android.text.Spanned;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public final class B implements M {
    public C0174m onReceiveContent(View view, C0174m c0174m) {
        CharSequence coerceToStyledText;
        if (Log.isLoggable("ReceiveContent", 3)) {
            Log.d("ReceiveContent", "onReceive: " + c0174m);
        }
        if (c0174m.getSource() == 2) {
            return c0174m;
        }
        ClipData clip = c0174m.getClip();
        int flags = c0174m.getFlags();
        TextView textView = (TextView) view;
        Editable editable = (Editable) textView.getText();
        Context context = textView.getContext();
        boolean z6 = false;
        for (int i2 = 0; i2 < clip.getItemCount(); i2++) {
            ClipData.Item itemAt = clip.getItemAt(i2);
            if ((flags & 1) != 0) {
                coerceToStyledText = itemAt.coerceToText(context);
                if (coerceToStyledText instanceof Spanned) {
                    coerceToStyledText = coerceToStyledText.toString();
                }
            } else {
                coerceToStyledText = itemAt.coerceToStyledText(context);
            }
            if (coerceToStyledText != null) {
                if (z6) {
                    editable.insert(Selection.getSelectionEnd(editable), StringUtils.LF);
                    editable.insert(Selection.getSelectionEnd(editable), coerceToStyledText);
                } else {
                    int selectionStart = Selection.getSelectionStart(editable);
                    int selectionEnd = Selection.getSelectionEnd(editable);
                    int max = Math.max(0, Math.min(selectionStart, selectionEnd));
                    int max2 = Math.max(0, Math.max(selectionStart, selectionEnd));
                    Selection.setSelection(editable, max2);
                    editable.replace(max, max2, coerceToStyledText);
                    z6 = true;
                }
            }
        }
        return null;
    }
}
