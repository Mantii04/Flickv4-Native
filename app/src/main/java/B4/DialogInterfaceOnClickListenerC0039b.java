package B4;

import android.content.DialogInterface;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.activities.adult.AdultHistoryActivity;
import flix.com.vision.activities.adult.AdultVideosActivity;
import flix.com.vision.activities.adult.AdultVideosFavoritesActivity;
import flix.com.vision.activities.adult.AdultVideosSearchActivity;
import flix.com.vision.activities.player.AdultVideoPlayerActivity;
import flix.com.vision.models.ChannelTv;
import flix.com.vision.models.VideoSource;
import flix.com.vision.models.adult.AdultLink;
import flix.com.vision.tv.ChannelsListActivityLegacy;
import io.hopmonsdk.Hopmn;
import java.util.ArrayList;

/* renamed from: B4.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC0039b implements DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f256b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f257e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f258f;

    public /* synthetic */ DialogInterfaceOnClickListenerC0039b(int i2, Object obj, Object obj2) {
        this.f256b = i2;
        this.f257e = obj;
        this.f258f = obj2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        switch (this.f256b) {
            case 0:
                int i7 = AdultVideoPlayerActivity.f15591z;
                AdultVideoPlayerActivity adultVideoPlayerActivity = (AdultVideoPlayerActivity) this.f257e;
                adultVideoPlayerActivity.getClass();
                adultVideoPlayerActivity.playAdultLink(((AdultLink) ((ArrayList) this.f258f).get(i2)).stream_url);
                dialogInterface.dismiss();
                break;
            case 1:
                int i8 = ChannelsListActivityLegacy.f16168y;
                ChannelsListActivityLegacy channelsListActivityLegacy = (ChannelsListActivityLegacy) this.f257e;
                channelsListActivityLegacy.getClass();
                ChannelTv channelTv = (ChannelTv) this.f258f;
                ChannelTv channelTv2 = new ChannelTv(channelTv);
                channelTv2.links.add(0, channelTv.links.get(i2));
                channelsListActivityLegacy.OpenChannell(channelTv2);
                break;
            case 2:
                Hopmn hopmn = (Hopmn) this.f257e;
                Hopmn.ConsentCallback consentCallback = (Hopmn.ConsentCallback) this.f258f;
                hopmn.f16775g = false;
                hopmn.f16772d.set("hopmon.consent_choice", "agree");
                hopmn.f16772d.set("hopmon.consent_accepted", true);
                hopmn.f16774f = true;
                consentCallback.onAgreed();
                break;
            case 3:
                int i9 = LinksActivity.f14702b0;
                LinksActivity linksActivity = (LinksActivity) this.f257e;
                linksActivity.getClass();
                linksActivity.e((VideoSource) ((ArrayList) this.f258f).get(i2));
                break;
            case 4:
                int i10 = AdultHistoryActivity.f15323v;
                AdultHistoryActivity adultHistoryActivity = (AdultHistoryActivity) this.f257e;
                adultHistoryActivity.getClass();
                adultHistoryActivity.playAdultLink(((AdultLink) ((ArrayList) this.f258f).get(i2)).stream_url);
                dialogInterface.dismiss();
                break;
            case 5:
                int i11 = AdultVideosActivity.f15347C;
                AdultVideosActivity adultVideosActivity = (AdultVideosActivity) this.f257e;
                adultVideosActivity.getClass();
                adultVideosActivity.playAdultLink(((AdultLink) ((ArrayList) this.f258f).get(i2)).stream_url);
                dialogInterface.dismiss();
                break;
            case 6:
                int i12 = AdultVideosFavoritesActivity.f15367v;
                AdultVideosFavoritesActivity adultVideosFavoritesActivity = (AdultVideosFavoritesActivity) this.f257e;
                adultVideosFavoritesActivity.getClass();
                adultVideosFavoritesActivity.playAdultLink(((AdultLink) ((ArrayList) this.f258f).get(i2)).stream_url);
                dialogInterface.dismiss();
                break;
            default:
                int i13 = AdultVideosSearchActivity.f15380y;
                AdultVideosSearchActivity adultVideosSearchActivity = (AdultVideosSearchActivity) this.f257e;
                adultVideosSearchActivity.getClass();
                adultVideosSearchActivity.playAdultLink(((AdultLink) ((ArrayList) this.f258f).get(i2)).stream_url);
                dialogInterface.dismiss();
                break;
        }
    }
}
