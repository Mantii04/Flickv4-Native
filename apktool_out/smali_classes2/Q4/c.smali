.class public final synthetic LQ4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:LQ4/d;

.field public final synthetic f:LQ4/d;


# direct methods
.method public synthetic constructor <init>(LQ4/d;LQ4/d;I)V
    .locals 0

    .line 1
    iput p3, p0, LQ4/c;->b:I

    iput-object p1, p0, LQ4/c;->e:LQ4/d;

    iput-object p2, p0, LQ4/c;->f:LQ4/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, LQ4/c;->f:LQ4/d;

    .line 2
    .line 3
    iget-object v0, p0, LQ4/c;->e:LQ4/d;

    .line 4
    .line 5
    iget v1, p0, LQ4/c;->b:I

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v1, LQ4/d;->Y:Landroid/graphics/Typeface;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    .line 16
    .line 17
    .line 18
    const-string p1, "https://twitter.com/FlixVisionApp"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, LQ4/d;->a(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    sget-object v1, LQ4/d;->Y:Landroid/graphics/Typeface;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    .line 30
    .line 31
    .line 32
    const-string p1, "https://discord.gg/tKjc4PTvxu"

    .line 33
    .line 34
    invoke-virtual {v0, p1}, LQ4/d;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
