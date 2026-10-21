.class public final synthetic Lflix/com/vision/extractors/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lflix/com/vision/extractors/CloseloadExtractor$StringTransform;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lflix/com/vision/extractors/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/extractors/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lflix/com/vision/extractors/CloseloadExtractor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p1}, Lflix/com/vision/extractors/CloseloadExtractor;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
