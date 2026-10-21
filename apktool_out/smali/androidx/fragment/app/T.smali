.class public final synthetic Landroidx/fragment/app/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/i0;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/i0;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/fragment/app/T;->a:I

    iput-object p1, p0, Landroidx/fragment/app/T;->b:Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/T;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lz/S;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/T;->b:Landroidx/fragment/app/i0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->C()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lz/S;->isInPictureInPictureMode()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/i0;->r(ZZ)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :pswitch_0
    check-cast p1, Lz/u;

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/fragment/app/T;->b:Landroidx/fragment/app/i0;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->C()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Lz/u;->isInMultiWindowMode()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/i0;->m(ZZ)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/fragment/app/T;->b:Landroidx/fragment/app/i0;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->C()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/16 v1, 0x50

    .line 59
    .line 60
    if-ne p1, v1, :cond_2

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    invoke-virtual {v0, p1}, Landroidx/fragment/app/i0;->l(Z)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void

    .line 67
    :pswitch_2
    check-cast p1, Landroid/content/res/Configuration;

    .line 68
    .line 69
    iget-object v0, p0, Landroidx/fragment/app/T;->b:Landroidx/fragment/app/i0;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->C()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/i0;->h(ZLandroid/content/res/Configuration;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
