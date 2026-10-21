package B4;

import C4.d0;
import K3.C0138d;
import android.content.Intent;
import android.net.Uri;
import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import androidx.mediarouter.app.DialogC0605i;
import e.DialogInterfaceC0839s;
import flix.com.vision.App;
import flix.com.vision.activities.AnimeHistoryActivity;
import flix.com.vision.activities.DonationActvity;
import flix.com.vision.activities.DramaHistoryActivity;
import flix.com.vision.activities.SeriesDetailActivity;
import flix.com.vision.activities.SeriesDetailActivityLeanBack;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.YouTubePlayerActivity;
import flix.com.vision.activities.adult.AdultVideosFavoritesActivity;
import flix.com.vision.activities.adult.AdultVideosSearchActivity;
import flix.com.vision.activities.player.AdultVideoPlayerActivity;
import flix.com.vision.activities.player.YouTubeWebviewActivity;
import flix.com.vision.tv.PlayerActivityLiveExternal;
import h5.AbstractC0995i;
import io.github.giangpham96.expandable_textview.ExpandableTextView;

/* renamed from: B4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ViewOnClickListenerC0038a implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f254b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f255e;

    public /* synthetic */ ViewOnClickListenerC0038a(Object obj, int i2) {
        this.f254b = i2;
        this.f255e = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Object obj = this.f255e;
        switch (this.f254b) {
            case 0:
                AdultVideoPlayerActivity.e((AdultVideoPlayerActivity) obj);
                return;
            case 1:
                int i2 = YouTubeWebviewActivity.f15778t;
                ((YouTubeWebviewActivity) obj).finish();
                return;
            case 2:
                ((d0) obj).f659v.performClick();
                return;
            case 3:
                C0138d c0138d = (C0138d) obj;
                EditText editText = c0138d.f1668i;
                if (editText == null) {
                    return;
                }
                Editable text = editText.getText();
                if (text != null) {
                    text.clear();
                }
                c0138d.l();
                return;
            case 4:
                ((K3.l) obj).p();
                return;
            case 5:
                K3.y yVar = (K3.y) obj;
                EditText editText2 = yVar.f1775f;
                if (editText2 == null) {
                    return;
                }
                int selectionEnd = editText2.getSelectionEnd();
                EditText editText3 = yVar.f1775f;
                if (editText3 == null || !(editText3.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                    yVar.f1775f.setTransformationMethod(PasswordTransformationMethod.getInstance());
                } else {
                    yVar.f1775f.setTransformationMethod(null);
                }
                if (selectionEnd >= 0) {
                    yVar.f1775f.setSelection(selectionEnd);
                }
                yVar.l();
                return;
            case 6:
                ((DialogC0605i) obj).dismiss();
                return;
            case 7:
                ((com.google.android.material.datepicker.y) obj).j();
                throw null;
            case 8:
                int i7 = PlayerActivityLiveExternal.f16226J;
                ((PlayerActivityLiveExternal) obj).finish();
                return;
            case 9:
                int i8 = ExpandableTextView.f16757A;
                ExpandableTextView this$0 = (ExpandableTextView) obj;
                kotlin.jvm.internal.j.checkNotNullParameter(this$0, "this$0");
                this$0.toggle();
                return;
            case 10:
                int i9 = AnimeHistoryActivity.f14473n;
                AnimeHistoryActivity animeHistoryActivity = (AnimeHistoryActivity) obj;
                animeHistoryActivity.getClass();
                App.getInstance().f14439r.clearHistoryAnime();
                animeHistoryActivity.f14476f.clear();
                animeHistoryActivity.f14477j.notifyDataSetChanged();
                AbstractC0995i.makeToast(animeHistoryActivity, "Anime history cleared", true);
                return;
            case 11:
                int i10 = DonationActvity.f14550b;
                DonationActvity donationActvity = (DonationActvity) obj;
                donationActvity.getClass();
                Intent intent = new Intent("android.intent.action.SENDTO");
                intent.setData(Uri.parse("mailto:"));
                intent.putExtra("android.intent.extra.EMAIL", "donation@flixvision.tv");
                intent.putExtra("android.intent.extra.SUBJECT", "FLIXVISION Donation");
                if (intent.resolveActivity(donationActvity.getPackageManager()) != null) {
                    donationActvity.startActivity(intent);
                    return;
                }
                return;
            case 12:
                int i11 = DramaHistoryActivity.f14575m;
                DramaHistoryActivity dramaHistoryActivity = (DramaHistoryActivity) obj;
                dramaHistoryActivity.getClass();
                App.getInstance().f14439r.clearHistoryDrama();
                dramaHistoryActivity.f14577e.clear();
                dramaHistoryActivity.f14578f.notifyDataSetChanged();
                AbstractC0995i.makeToast(dramaHistoryActivity, "Drama history cleared", true);
                return;
            case 13:
                SeriesDetailActivity seriesDetailActivity = (SeriesDetailActivity) obj;
                if (seriesDetailActivity.f15046q.size() < 2) {
                    return;
                }
                try {
                    Q4.e.newInstance(seriesDetailActivity, seriesDetailActivity, seriesDetailActivity.f15046q, seriesDetailActivity.f15034B).show(seriesDetailActivity.getFragmentManager(), "");
                    return;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            case 14:
                SeriesDetailActivityLeanBack seriesDetailActivityLeanBack = (SeriesDetailActivityLeanBack) obj;
                if (seriesDetailActivityLeanBack.f15070q.size() < 2) {
                    return;
                }
                try {
                    Q4.e.newInstance(seriesDetailActivityLeanBack, seriesDetailActivityLeanBack, seriesDetailActivityLeanBack.f15070q, seriesDetailActivityLeanBack.f15058B).show(seriesDetailActivityLeanBack.getFragmentManager(), "");
                    return;
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return;
                }
            case 15:
                int i12 = SettingsActivity.f15080c2;
                ((DialogInterfaceC0839s) obj).dismiss();
                return;
            case 16:
                int i13 = YouTubePlayerActivity.f15301r;
                ((YouTubePlayerActivity) obj).finish();
                return;
            default:
                int i14 = AdultVideosFavoritesActivity.f15367v;
                AdultVideosFavoritesActivity adultVideosFavoritesActivity = (AdultVideosFavoritesActivity) obj;
                adultVideosFavoritesActivity.getClass();
                adultVideosFavoritesActivity.startActivity(new Intent(adultVideosFavoritesActivity, (Class<?>) AdultVideosSearchActivity.class));
                return;
        }
    }
}
