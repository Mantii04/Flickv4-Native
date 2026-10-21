.class public final synthetic LQ4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:LQ4/g;


# direct methods
.method public synthetic constructor <init>(LQ4/g;I)V
    .locals 0

    .line 1
    iput p2, p0, LQ4/f;->b:I

    iput-object p1, p0, LQ4/f;->e:LQ4/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 2
    .line 3
    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    iget-object p1, p0, LQ4/f;->e:LQ4/g;

    .line 9
    .line 10
    iget v4, p0, LQ4/f;->b:I

    .line 11
    .line 12
    packed-switch v4, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget v0, LQ4/g;->p:I

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-wide v4, p1, LQ4/g;->m:D

    .line 22
    .line 23
    add-double/2addr v4, v2

    .line 24
    iput-wide v4, p1, LQ4/g;->m:D

    .line 25
    .line 26
    mul-double/2addr v4, v0

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    long-to-double v2, v2

    .line 32
    div-double/2addr v2, v0

    .line 33
    iput-wide v2, p1, LQ4/g;->m:D

    .line 34
    .line 35
    invoke-virtual {p1}, LQ4/g;->a()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_1
    iget-wide v4, p1, LQ4/g;->m:D

    .line 40
    .line 41
    sub-double/2addr v4, v2

    .line 42
    iput-wide v4, p1, LQ4/g;->m:D

    .line 43
    .line 44
    mul-double/2addr v4, v0

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    long-to-double v2, v2

    .line 50
    div-double/2addr v2, v0

    .line 51
    iput-wide v2, p1, LQ4/g;->m:D

    .line 52
    .line 53
    invoke-virtual {p1}, LQ4/g;->a()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
