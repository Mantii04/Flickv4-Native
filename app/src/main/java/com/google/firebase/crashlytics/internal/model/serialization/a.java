package com.google.firebase.crashlytics.internal.model.serialization;

import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements CrashlyticsReportJsonTransform.ObjectParser {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13274a;

    public /* synthetic */ a(int i2) {
        this.f13274a = i2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform.ObjectParser
    public final Object parse(JsonReader jsonReader) {
        CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame parseEventFrame;
        CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch parseBuildIdMappingForArch;
        CrashlyticsReport.CustomAttribute parseCustomAttribute;
        CrashlyticsReport.Session.Event.Application.ProcessDetails parseProcessDetails;
        CrashlyticsReport.Session.Event parseEvent;
        CrashlyticsReport.Session.Event.Application.Execution.Thread parseEventThread;
        CrashlyticsReport.Session.Event.Application.Execution.BinaryImage parseEventBinaryImage;
        CrashlyticsReport.FilesPayload.File parseFile;
        CrashlyticsReport.Session.Event.RolloutAssignment parseEventRolloutsAssignment;
        switch (this.f13274a) {
            case 0:
                parseEventFrame = CrashlyticsReportJsonTransform.parseEventFrame(jsonReader);
                return parseEventFrame;
            case 1:
                parseBuildIdMappingForArch = CrashlyticsReportJsonTransform.parseBuildIdMappingForArch(jsonReader);
                return parseBuildIdMappingForArch;
            case 2:
                parseCustomAttribute = CrashlyticsReportJsonTransform.parseCustomAttribute(jsonReader);
                return parseCustomAttribute;
            case 3:
                parseProcessDetails = CrashlyticsReportJsonTransform.parseProcessDetails(jsonReader);
                return parseProcessDetails;
            case 4:
                parseEvent = CrashlyticsReportJsonTransform.parseEvent(jsonReader);
                return parseEvent;
            case 5:
                parseEventThread = CrashlyticsReportJsonTransform.parseEventThread(jsonReader);
                return parseEventThread;
            case 6:
                parseEventBinaryImage = CrashlyticsReportJsonTransform.parseEventBinaryImage(jsonReader);
                return parseEventBinaryImage;
            case 7:
                parseFile = CrashlyticsReportJsonTransform.parseFile(jsonReader);
                return parseFile;
            default:
                parseEventRolloutsAssignment = CrashlyticsReportJsonTransform.parseEventRolloutsAssignment(jsonReader);
                return parseEventRolloutsAssignment;
        }
    }
}
