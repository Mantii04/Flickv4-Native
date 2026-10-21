package l;

import android.R;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class V1 {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f17786a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f17787b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageView f17788c;

    /* renamed from: d, reason: collision with root package name */
    public final ImageView f17789d;

    /* renamed from: e, reason: collision with root package name */
    public final ImageView f17790e;

    public V1(View view) {
        this.f17786a = (TextView) view.findViewById(R.id.text1);
        this.f17787b = (TextView) view.findViewById(R.id.text2);
        this.f17788c = (ImageView) view.findViewById(R.id.icon1);
        this.f17789d = (ImageView) view.findViewById(R.id.icon2);
        this.f17790e = (ImageView) view.findViewById(androidx.appcompat.R.id.edit_query);
    }
}
