.class public final Landroidx/mediarouter/app/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroidx/mediarouter/app/D;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/D;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/w;->b:Landroidx/mediarouter/app/D;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Landroidx/mediarouter/app/w;->b:Landroidx/mediarouter/app/D;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const v2, 0x1020019

    .line 9
    .line 10
    .line 11
    if-eq p1, v2, :cond_7

    .line 12
    .line 13
    const v3, 0x102001a

    .line 14
    .line 15
    .line 16
    if-ne p1, v3, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    sget v2, Landroidx/mediarouter/R$id;->mr_control_playback_ctrl:I

    .line 21
    .line 22
    if-ne p1, v2, :cond_5

    .line 23
    .line 24
    iget-object p1, v0, Landroidx/mediarouter/app/D;->d0:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 25
    .line 26
    if-eqz p1, :cond_6

    .line 27
    .line 28
    iget-object p1, v0, Landroidx/mediarouter/app/D;->f0:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 29
    .line 30
    if-eqz p1, :cond_6

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/4 v2, 0x3

    .line 37
    const/4 v3, 0x0

    .line 38
    if-ne p1, v2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v1, v3

    .line 42
    :goto_0
    const-wide/16 v4, 0x0

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object p1, v0, Landroidx/mediarouter/app/D;->f0:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    const-wide/16 v8, 0x202

    .line 53
    .line 54
    and-long/2addr v6, v8

    .line 55
    cmp-long p1, v6, v4

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object p1, v0, Landroidx/mediarouter/app/D;->d0:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    .line 66
    .line 67
    .line 68
    sget v3, Landroidx/mediarouter/R$string;->mr_controller_pause:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    if-eqz v1, :cond_3

    .line 72
    .line 73
    iget-object p1, v0, Landroidx/mediarouter/app/D;->f0:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 76
    .line 77
    .line 78
    move-result-wide v6

    .line 79
    const-wide/16 v8, 0x1

    .line 80
    .line 81
    and-long/2addr v6, v8

    .line 82
    cmp-long p1, v6, v4

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-object p1, v0, Landroidx/mediarouter/app/D;->d0:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->stop()V

    .line 93
    .line 94
    .line 95
    sget v3, Landroidx/mediarouter/R$string;->mr_controller_stop:I

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    if-nez v1, :cond_4

    .line 99
    .line 100
    iget-object p1, v0, Landroidx/mediarouter/app/D;->f0:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 103
    .line 104
    .line 105
    move-result-wide v1

    .line 106
    const-wide/16 v6, 0x204

    .line 107
    .line 108
    and-long/2addr v1, v6

    .line 109
    cmp-long p1, v1, v4

    .line 110
    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    iget-object p1, v0, Landroidx/mediarouter/app/D;->d0:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    .line 120
    .line 121
    .line 122
    sget v3, Landroidx/mediarouter/R$string;->mr_controller_play:I

    .line 123
    .line 124
    :cond_4
    :goto_1
    iget-object p1, v0, Landroidx/mediarouter/app/D;->y0:Landroid/view/accessibility/AccessibilityManager;

    .line 125
    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_6

    .line 133
    .line 134
    if-eqz v3, :cond_6

    .line 135
    .line 136
    const/16 v1, 0x4000

    .line 137
    .line 138
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget-object v2, v0, Landroidx/mediarouter/app/D;->s:Landroid/content/Context;

    .line 143
    .line 144
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    const-class v2, Landroidx/mediarouter/app/w;

    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    iget-object v0, v0, Landroidx/mediarouter/app/D;->s:Landroid/content/Context;

    .line 165
    .line 166
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_5
    sget v1, Landroidx/mediarouter/R$id;->mr_close:I

    .line 178
    .line 179
    if-ne p1, v1, :cond_6

    .line 180
    .line 181
    invoke-virtual {v0}, Le/c0;->dismiss()V

    .line 182
    .line 183
    .line 184
    :cond_6
    return-void

    .line 185
    :cond_7
    :goto_2
    iget-object v3, v0, Landroidx/mediarouter/app/D;->r:Lf1/U;

    .line 186
    .line 187
    invoke-virtual {v3}, Lf1/U;->isSelected()Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-eqz v3, :cond_9

    .line 192
    .line 193
    if-ne p1, v2, :cond_8

    .line 194
    .line 195
    const/4 v1, 0x2

    .line 196
    :cond_8
    iget-object p1, v0, Landroidx/mediarouter/app/D;->p:Lf1/X;

    .line 197
    .line 198
    invoke-virtual {p1, v1}, Lf1/X;->unselect(I)V

    .line 199
    .line 200
    .line 201
    :cond_9
    invoke-virtual {v0}, Le/c0;->dismiss()V

    .line 202
    .line 203
    .line 204
    return-void
.end method
