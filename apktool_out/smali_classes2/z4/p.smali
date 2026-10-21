.class public final synthetic Lz4/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lz4/p;->b:I

    iput-object p1, p0, Lz4/p;->e:Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lz4/p;->e:Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;

    .line 2
    .line 3
    iget v0, p0, Lz4/p;->b:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->t:I

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    const-class v1, Lflix/com/vision/activities/adult/AdultCategoriesActivity;

    .line 16
    .line 17
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "Login Successful!"

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    sget v0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->t:I

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_1
    sget v0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->t:I

    .line 45
    .line 46
    invoke-virtual {p1}, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->e()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_2
    sget v0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->t:I

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
