.class public final synthetic Lb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lb/d;


# direct methods
.method public synthetic constructor <init>(Lb/d;I)V
    .locals 0

    .line 1
    iput p2, p0, Lb/a;->b:I

    iput-object p1, p0, Lb/a;->e:Lb/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lb/a;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb/a;->e:Lb/d;

    invoke-virtual {v0}, Lb/d;->a()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lb/a;->e:Lb/d;

    invoke-virtual {v0}, Lb/d;->b()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
