package Q4;

import C4.Z;
import U4.k;
import android.app.Activity;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import flix.com.vision.R;
import flix.com.vision.activities.SeriesDetailActivity;
import flix.com.vision.helpers.CenterLayoutManager;
import flix.com.vision.models.Season;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class e extends DialogFragment implements k {

    /* renamed from: j, reason: collision with root package name */
    public static int f2980j;

    /* renamed from: m, reason: collision with root package name */
    public static Activity f2981m;

    /* renamed from: b, reason: collision with root package name */
    public RecyclerView f2982b;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f2983e;

    /* renamed from: f, reason: collision with root package name */
    public k f2984f;

    public static e newInstance(Activity activity, k kVar, ArrayList<Season> arrayList, int i2) {
        e eVar = new e();
        f2981m = activity;
        f2980j = i2;
        eVar.f2984f = kVar;
        eVar.f2983e = arrayList;
        return eVar;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.seasons_dialog_fragment, viewGroup, false);
        getDialog().getWindow().requestFeature(1);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.recyclerview_seasons);
        this.f2982b = recyclerView;
        b.c.s(recyclerView, 18);
        this.f2982b.setLayoutManager(new CenterLayoutManager(f2981m, 1, false));
        this.f2982b.setAdapter(new Z((SeriesDetailActivity) f2981m, this, this.f2983e, f2980j));
        setCancelable(true);
        return inflate;
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
    }

    @Override // U4.k
    public void openSeason(int i2) {
        k kVar = this.f2984f;
        if (kVar != null) {
            kVar.openSeason(i2);
        }
        dismiss();
    }
}
