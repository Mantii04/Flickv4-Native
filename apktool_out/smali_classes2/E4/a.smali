.class public final synthetic LE4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le/v;


# direct methods
.method public synthetic constructor <init>(Le/v;I)V
    .locals 0

    .line 1
    iput p2, p0, LE4/a;->a:I

    iput-object p1, p0, LE4/a;->b:Le/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 p3, 0x1

    .line 3
    iget-object v0, p0, LE4/a;->b:Le/v;

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    iget v2, p0, LE4/a;->a:I

    .line 7
    .line 8
    packed-switch v2, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget v2, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->t:I

    .line 12
    .line 13
    check-cast v0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;

    .line 14
    .line 15
    if-ne p2, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->e()V

    .line 18
    .line 19
    .line 20
    move p1, p3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    :goto_0
    return p1

    .line 26
    :pswitch_0
    sget v2, Lflix/com/vision/api/torbox/TorBoxApiKeyEntryActivity;->p:I

    .line 27
    .line 28
    check-cast v0, Lflix/com/vision/api/torbox/TorBoxApiKeyEntryActivity;

    .line 29
    .line 30
    if-ne p2, v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lflix/com/vision/api/torbox/TorBoxApiKeyEntryActivity;->e()V

    .line 33
    .line 34
    .line 35
    move p1, p3

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    :goto_1
    return p1

    .line 41
    :pswitch_1
    sget v2, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->p:I

    .line 42
    .line 43
    check-cast v0, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;

    .line 44
    .line 45
    if-ne p2, v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->e()V

    .line 48
    .line 49
    .line 50
    move p1, p3

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    :goto_2
    return p1

    .line 56
    :pswitch_2
    sget v2, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->p:I

    .line 57
    .line 58
    check-cast v0, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;

    .line 59
    .line 60
    if-ne p2, v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->e()V

    .line 63
    .line 64
    .line 65
    move p1, p3

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    :goto_3
    return p1

    .line 71
    :pswitch_3
    sget v2, Lflix/com/vision/api/alldebrid/AllDebridApiKeyEntryActivity;->p:I

    .line 72
    .line 73
    check-cast v0, Lflix/com/vision/api/alldebrid/AllDebridApiKeyEntryActivity;

    .line 74
    .line 75
    if-ne p2, v1, :cond_4

    .line 76
    .line 77
    invoke-virtual {v0}, Lflix/com/vision/api/alldebrid/AllDebridApiKeyEntryActivity;->e()V

    .line 78
    .line 79
    .line 80
    move p1, p3

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    :goto_4
    return p1

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
