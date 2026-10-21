.class public final synthetic Lf5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/tv/ChannelsListActivity;

.field public final synthetic f:Lflix/com/vision/models/ChannelTv;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/tv/ChannelsListActivity;Lflix/com/vision/models/ChannelTv;I)V
    .locals 0

    .line 1
    iput p3, p0, Lf5/b;->b:I

    iput-object p1, p0, Lf5/b;->e:Lflix/com/vision/tv/ChannelsListActivity;

    iput-object p2, p0, Lf5/b;->f:Lflix/com/vision/models/ChannelTv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    const-string p1, "pref_tv_channel_fav_"

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lf5/b;->f:Lflix/com/vision/models/ChannelTv;

    .line 5
    .line 6
    iget-object v2, p0, Lf5/b;->e:Lflix/com/vision/tv/ChannelsListActivity;

    .line 7
    .line 8
    iget v3, p0, Lf5/b;->b:I

    .line 9
    .line 10
    packed-switch v3, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget p1, Lflix/com/vision/tv/ChannelsListActivity;->x:I

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lflix/com/vision/tv/ChannelsListActivity;->playChannel(Lflix/com/vision/models/ChannelTv;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    sget v3, Lflix/com/vision/tv/ChannelsListActivity;->x:I

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v3, "Added To Favorites"

    .line 25
    .line 26
    invoke-static {v2, v3, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, v2, Lflix/com/vision/tv/ChannelsListActivity;->b:Ljava/util/HashSet;

    .line 30
    .line 31
    iget-object v1, v1, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 41
    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, v2, Lflix/com/vision/tv/ChannelsListActivity;->w:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v1, v2, Lflix/com/vision/tv/ChannelsListActivity;->b:Ljava/util/HashSet;

    .line 61
    .line 62
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lflix/com/vision/tv/ChannelsListActivity;->updateFavoritesBar()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_1
    sget p1, Lflix/com/vision/tv/ChannelsListActivity;->x:I

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Lflix/com/vision/tv/ChannelsListActivity;->playChannel(Lflix/com/vision/models/ChannelTv;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_2
    sget v3, Lflix/com/vision/tv/ChannelsListActivity;->x:I

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    const-string v3, "Removed From Favorites"

    .line 85
    .line 86
    invoke-static {v2, v3, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
    iget-object v0, v2, Lflix/com/vision/tv/ChannelsListActivity;->b:Ljava/util/HashSet;

    .line 90
    .line 91
    iget-object v1, v1, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 101
    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, v2, Lflix/com/vision/tv/ChannelsListActivity;->w:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object v1, v2, Lflix/com/vision/tv/ChannelsListActivity;->b:Ljava/util/HashSet;

    .line 121
    .line 122
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Lflix/com/vision/tv/ChannelsListActivity;->updateFavoritesBar()V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
