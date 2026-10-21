package flix.com.vision.models;

import U4.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* loaded from: classes2.dex */
public class MySourceArrayList extends ArrayList<VideoSource> {
    h listener;
    public int premium_link_count = 0;
    String streams = "";

    public MySourceArrayList(h hVar) {
        this.listener = hVar;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends VideoSource> collection) {
        for (VideoSource videoSource : collection) {
            if (videoSource.topLink()) {
                add(0, videoSource);
            } else {
                add(videoSource);
            }
        }
        return true;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public synchronized boolean add(VideoSource videoSource) {
        if (videoSource == null) {
            return false;
        }
        try {
            if (videoSource.streamable) {
                this.streams += " | " + videoSource.streamUrl;
            }
            if (!videoSource.hasMultiSubtitles() && contains(videoSource)) {
                return false;
            }
            String str = videoSource.streamUrl;
            if (str != null && str.startsWith("//")) {
                videoSource.streamUrl = "http:" + videoSource.streamUrl;
            }
            if (videoSource.label.toLowerCase().contains("BITPORNO")) {
                videoSource.label = videoSource.label.replace("BITPORNO", "RAPIDVIDEO");
            }
            if (videoSource.unavailable()) {
                return false;
            }
            if (videoSource.topLink()) {
                add(0, videoSource);
            } else {
                super.add((MySourceArrayList) videoSource);
                if (videoSource.isPremiumize || videoSource.isRealDebrid || videoSource.isAllDebrid) {
                    this.premium_link_count++;
                }
            }
            h hVar = this.listener;
            if (hVar != null) {
                hVar.onAdded();
            }
            Collections.sort(this);
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public synchronized void add(int i2, VideoSource videoSource) {
        if (videoSource == null) {
            return;
        }
        this.streams += " | " + videoSource.streamUrl;
        if (videoSource.hasMultiSubtitles() || !contains(videoSource)) {
            String str = videoSource.streamUrl;
            if (str != null && str.startsWith("//")) {
                videoSource.streamUrl = "http:" + videoSource.streamUrl;
            }
            if (videoSource.unavailable()) {
                return;
            }
            super.add(i2, (int) videoSource);
            if (videoSource.isPremiumize || videoSource.isRealDebrid || videoSource.isAllDebrid) {
                this.premium_link_count++;
            }
            h hVar = this.listener;
            if (hVar != null) {
                hVar.onAdded();
            }
            Collections.sort(this);
        }
    }
}
