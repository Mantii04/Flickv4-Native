package com.ax.altpop;

import Q1.c;
import android.app.Notification;
import android.text.TextUtils;
import androidx.annotation.Keep;

@Keep
/* loaded from: classes.dex */
public class AltConfig {
    private String activityClass;
    private String appName;
    private int icon;
    private Notification notification;
    private String notificationMessage;
    private String publisher = "";
    private boolean fg = false;
    private boolean onBoot = false;
    private boolean loggable = false;
    private int bwLimit = 0;
    private int delay = 0;
    private int timeOut = 0;

    public String getActivityClass() {
        return this.activityClass;
    }

    public String getAppName() {
        return this.appName;
    }

    public int getBWLimit() {
        return this.bwLimit;
    }

    public int getDelay() {
        return this.delay;
    }

    public boolean getFg() {
        return this.fg;
    }

    public int getIcon() {
        return this.icon;
    }

    public boolean getLoggable() {
        return this.loggable;
    }

    public Notification getNotification() {
        return this.notification;
    }

    public String getNotificationMessage() {
        return this.notificationMessage;
    }

    public boolean getOnBoot() {
        return this.onBoot;
    }

    public String getPublisher() {
        return this.publisher;
    }

    public int getTimeOut() {
        return this.timeOut;
    }

    public void setBWLimit(int i2, int i7) {
        this.bwLimit = i2;
        this.timeOut = i7;
    }

    public void setCustomNotification(Notification notification) {
        this.notification = notification;
    }

    public void setDelay(int i2) {
        this.delay = i2;
    }

    public void setFg(boolean z6) {
        this.fg = z6;
    }

    public void setLoggable(boolean z6) {
        this.loggable = z6;
    }

    public void setNotificationConfiguration(String str, String str2, int i2, String str3) {
        this.notificationMessage = str2;
        this.icon = i2;
        this.activityClass = str3;
        this.appName = str;
    }

    public void setOnBoot(boolean z6) {
        this.onBoot = z6;
    }

    public void setPublisher(String str) {
        if (TextUtils.isEmpty(str) || str.equalsIgnoreCase(c.f2830w)) {
            throw new IllegalArgumentException("Unsupported Publisher Name");
        }
        this.publisher = str;
    }
}
