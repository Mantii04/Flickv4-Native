package y4;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckedTextView;

/* loaded from: classes2.dex */
public final class f1 extends ArrayAdapter {

    /* renamed from: b, reason: collision with root package name */
    public final int f21227b;

    /* renamed from: e, reason: collision with root package name */
    public final Context f21228e;

    public f1(Context context, int i2, CharSequence[] charSequenceArr, int i7) {
        super(context, i2, R.id.text1, charSequenceArr);
        this.f21227b = i7;
        this.f21228e = context;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(getContext()).inflate(flix.com.vision.R.layout.custom_select_dialog_singlechoice, viewGroup, false);
        }
        CheckedTextView checkedTextView = (CheckedTextView) view.findViewById(R.id.text1);
        checkedTextView.setText((CharSequence) getItem(i2));
        checkedTextView.setChecked(i2 == this.f21227b);
        Drawable checkMarkDrawable = checkedTextView.getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            boolean isChecked = checkedTextView.isChecked();
            Context context = this.f21228e;
            if (isChecked) {
                E.c.setTint(checkMarkDrawable, context.getResources().getColor(flix.com.vision.R.color.white));
                return view;
            }
            E.c.setTint(checkMarkDrawable, context.getResources().getColor(flix.com.vision.R.color.accent));
        }
        return view;
    }
}
