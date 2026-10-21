.class public final synthetic Ly4/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/FavoritesAcvivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/FavoritesAcvivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/J;->b:I

    iput-object p1, p0, Ly4/J;->e:Lflix/com/vision/activities/FavoritesAcvivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Ly4/J;->e:Lflix/com/vision/activities/FavoritesAcvivity;

    .line 2
    .line 3
    iget v0, p0, Ly4/J;->b:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lflix/com/vision/activities/FavoritesAcvivity;->u:I

    .line 9
    .line 10
    new-instance v0, Le/r;

    .line 11
    .line 12
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 13
    .line 14
    sget v2, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 15
    .line 16
    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Le/r;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p1, Lflix/com/vision/activities/FavoritesAcvivity;->j:[Ljava/lang/String;

    .line 23
    .line 24
    iget v2, p1, Lflix/com/vision/activities/FavoritesAcvivity;->e:I

    .line 25
    .line 26
    new-instance v3, Ly4/K;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-direct {v3, p1, v4}, Ly4/K;-><init>(Le/v;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2, v3}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Le/r;->show()Le/s;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_0
    sget v0, Lflix/com/vision/activities/FavoritesAcvivity;->u:I

    .line 40
    .line 41
    new-instance v0, Le/r;

    .line 42
    .line 43
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 44
    .line 45
    sget v2, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 46
    .line 47
    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1}, Le/r;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p1, Lflix/com/vision/activities/FavoritesAcvivity;->f:[Ljava/lang/String;

    .line 54
    .line 55
    iget v2, p1, Lflix/com/vision/activities/FavoritesAcvivity;->b:I

    .line 56
    .line 57
    new-instance v3, Ly4/K;

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    invoke-direct {v3, p1, v4}, Ly4/K;-><init>(Le/v;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2, v3}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Le/r;->show()Le/s;

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
