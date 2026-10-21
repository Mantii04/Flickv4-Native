package Q4;

import android.app.DialogFragment;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.TextView;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import flix.com.vision.R;
import flix.com.vision.bvp.BetterVideoPlayer;
import java.text.DecimalFormat;

/* loaded from: classes2.dex */
public class g extends DialogFragment {

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ int f2987p = 0;

    /* renamed from: b, reason: collision with root package name */
    public ImageButton f2988b;

    /* renamed from: e, reason: collision with root package name */
    public ImageButton f2989e;

    /* renamed from: f, reason: collision with root package name */
    public ImageButton f2990f;

    /* renamed from: j, reason: collision with root package name */
    public TextView f2991j;

    /* renamed from: m, reason: collision with root package name */
    public double f2992m = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;

    /* renamed from: n, reason: collision with root package name */
    public BetterVideoPlayer f2993n;

    public static g newInstance(BetterVideoPlayer betterVideoPlayer) {
        g gVar = new g();
        gVar.f2993n = betterVideoPlayer;
        return gVar;
    }

    public final void a() {
        DecimalFormat decimalFormat = new DecimalFormat("###0.0");
        StringBuilder o6 = b.c.o(this.f2992m > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? "+" : "");
        o6.append(decimalFormat.format(this.f2992m));
        String sb = o6.toString();
        this.f2991j.setText(sb + " s");
        BetterVideoPlayer betterVideoPlayer = this.f2993n;
        if (betterVideoPlayer != null) {
            betterVideoPlayer.setOffSet((long) (this.f2992m * 1000.0d));
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (getDialog() != null && getDialog().getWindow() != null) {
            getDialog().getWindow().requestFeature(1);
            getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
            WindowManager.LayoutParams attributes = getDialog().getWindow().getAttributes();
            attributes.gravity = 49;
            attributes.y = 100;
            getDialog().getWindow().setAttributes(attributes);
        }
        View inflate = layoutInflater.inflate(R.layout.fragment_subtitle_offset_dialog, viewGroup, false);
        this.f2990f = (ImageButton) inflate.findViewById(R.id.button_set_finish);
        this.f2989e = (ImageButton) inflate.findViewById(R.id.button_minus_offset);
        this.f2988b = (ImageButton) inflate.findViewById(R.id.button_plus_offset);
        this.f2991j = (TextView) inflate.findViewById(R.id.value_text_view);
        return inflate;
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.f2993n != null) {
            this.f2992m = r3.getOffset() / 1000.0d;
        }
        a();
        final int i2 = 0;
        this.f2989e.setOnClickListener(new View.OnClickListener(this) { // from class: Q4.f

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ g f2986e;

            {
                this.f2986e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                g gVar = this.f2986e;
                switch (i2) {
                    case 0:
                        gVar.f2992m = gVar.f2992m - 0.1d;
                        gVar.f2992m = Math.round(r4 * 10.0d) / 10.0d;
                        gVar.a();
                        break;
                    case 1:
                        gVar.f2992m = gVar.f2992m + 0.1d;
                        gVar.f2992m = Math.round(r4 * 10.0d) / 10.0d;
                        gVar.a();
                        break;
                    default:
                        int i7 = g.f2987p;
                        gVar.dismiss();
                        break;
                }
            }
        });
        final int i7 = 1;
        this.f2988b.setOnClickListener(new View.OnClickListener(this) { // from class: Q4.f

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ g f2986e;

            {
                this.f2986e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                g gVar = this.f2986e;
                switch (i7) {
                    case 0:
                        gVar.f2992m = gVar.f2992m - 0.1d;
                        gVar.f2992m = Math.round(r4 * 10.0d) / 10.0d;
                        gVar.a();
                        break;
                    case 1:
                        gVar.f2992m = gVar.f2992m + 0.1d;
                        gVar.f2992m = Math.round(r4 * 10.0d) / 10.0d;
                        gVar.a();
                        break;
                    default:
                        int i72 = g.f2987p;
                        gVar.dismiss();
                        break;
                }
            }
        });
        final int i8 = 2;
        this.f2990f.setOnClickListener(new View.OnClickListener(this) { // from class: Q4.f

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ g f2986e;

            {
                this.f2986e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                g gVar = this.f2986e;
                switch (i8) {
                    case 0:
                        gVar.f2992m = gVar.f2992m - 0.1d;
                        gVar.f2992m = Math.round(r4 * 10.0d) / 10.0d;
                        gVar.a();
                        break;
                    case 1:
                        gVar.f2992m = gVar.f2992m + 0.1d;
                        gVar.f2992m = Math.round(r4 * 10.0d) / 10.0d;
                        gVar.a();
                        break;
                    default:
                        int i72 = g.f2987p;
                        gVar.dismiss();
                        break;
                }
            }
        });
        new Handler().postDelayed(new A3.d(this, 13), 200L);
    }
}
