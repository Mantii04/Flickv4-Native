.class public final synthetic Ly4/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/UserTorrentsActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/t1;->b:I

    iput-object p1, p0, Ly4/t1;->e:Lflix/com/vision/activities/UserTorrentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Ly4/t1;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p1, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->m:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 7
    .line 8
    iget-object v0, p0, Ly4/t1;->e:Lflix/com/vision/activities/UserTorrentsActivity;

    .line 9
    .line 10
    iput-object p1, v0, Lflix/com/vision/activities/UserTorrentsActivity;->s:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 11
    .line 12
    iget-object p1, v0, Lflix/com/vision/activities/UserTorrentsActivity;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object p1, v0, Lflix/com/vision/activities/UserTorrentsActivity;->r:LC4/h0;

    .line 18
    .line 19
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lflix/com/vision/activities/UserTorrentsActivity;->g()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    sget-object p1, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->j:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 27
    .line 28
    iget-object v0, p0, Ly4/t1;->e:Lflix/com/vision/activities/UserTorrentsActivity;

    .line 29
    .line 30
    iput-object p1, v0, Lflix/com/vision/activities/UserTorrentsActivity;->s:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 31
    .line 32
    iget-object p1, v0, Lflix/com/vision/activities/UserTorrentsActivity;->b:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    iget-object p1, v0, Lflix/com/vision/activities/UserTorrentsActivity;->r:LC4/h0;

    .line 38
    .line 39
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lflix/com/vision/activities/UserTorrentsActivity;->g()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_1
    sget-object p1, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->f:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 47
    .line 48
    iget-object v0, p0, Ly4/t1;->e:Lflix/com/vision/activities/UserTorrentsActivity;

    .line 49
    .line 50
    iput-object p1, v0, Lflix/com/vision/activities/UserTorrentsActivity;->s:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 51
    .line 52
    iget-object p1, v0, Lflix/com/vision/activities/UserTorrentsActivity;->b:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 55
    .line 56
    .line 57
    iget-object p1, v0, Lflix/com/vision/activities/UserTorrentsActivity;->r:LC4/h0;

    .line 58
    .line 59
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lflix/com/vision/activities/UserTorrentsActivity;->g()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_2
    sget-object p1, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->e:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 67
    .line 68
    iget-object v0, p0, Ly4/t1;->e:Lflix/com/vision/activities/UserTorrentsActivity;

    .line 69
    .line 70
    iput-object p1, v0, Lflix/com/vision/activities/UserTorrentsActivity;->s:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 71
    .line 72
    iget-object p1, v0, Lflix/com/vision/activities/UserTorrentsActivity;->b:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 75
    .line 76
    .line 77
    iget-object p1, v0, Lflix/com/vision/activities/UserTorrentsActivity;->r:LC4/h0;

    .line 78
    .line 79
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lflix/com/vision/activities/UserTorrentsActivity;->g()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_3
    sget-object p1, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->b:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 87
    .line 88
    iget-object v0, p0, Ly4/t1;->e:Lflix/com/vision/activities/UserTorrentsActivity;

    .line 89
    .line 90
    iput-object p1, v0, Lflix/com/vision/activities/UserTorrentsActivity;->s:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 91
    .line 92
    iget-object p1, v0, Lflix/com/vision/activities/UserTorrentsActivity;->b:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 95
    .line 96
    .line 97
    iget-object p1, v0, Lflix/com/vision/activities/UserTorrentsActivity;->r:LC4/h0;

    .line 98
    .line 99
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lflix/com/vision/activities/UserTorrentsActivity;->g()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
