.class public Lcom/tuyenmonkey/mkloader/exception/InvalidNumberOfPulseException;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "The number of pulse must be between 2 and 6"

    .line 2
    .line 3
    return-object v0
.end method
