package f5;

import flix.com.vision.materialsearchview.MaterialSearchView;
import flix.com.vision.models.ChannelTv;
import flix.com.vision.tv.ChannelsListActivityLegacy;
import java.util.Iterator;

/* renamed from: f5.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0929c implements MaterialSearchView.OnQueryTextListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ChannelsListActivityLegacy f14395a;

    public C0929c(ChannelsListActivityLegacy channelsListActivityLegacy) {
        this.f14395a = channelsListActivityLegacy;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        ChannelsListActivityLegacy channelsListActivityLegacy = this.f14395a;
        if (channelsListActivityLegacy.f16173m.size() == 0) {
            return false;
        }
        if (str.trim().isEmpty()) {
            channelsListActivityLegacy.f16172j.clear();
            channelsListActivityLegacy.f16172j.addAll(channelsListActivityLegacy.f16173m);
            channelsListActivityLegacy.f16171f.notifyDataSetChanged();
            return true;
        }
        channelsListActivityLegacy.f16172j.clear();
        Iterator it = channelsListActivityLegacy.f16173m.iterator();
        while (it.hasNext()) {
            ChannelTv channelTv = (ChannelTv) it.next();
            if (channelTv.label.toLowerCase().contains(str.toLowerCase())) {
                channelsListActivityLegacy.f16172j.add(channelTv);
            }
        }
        channelsListActivityLegacy.f16171f.notifyDataSetChanged();
        return false;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        return false;
    }
}
