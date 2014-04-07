/*
 * jQuery Mobile Framework : plugin to provide a date and time picker.
 * Copyright (c) JTSage
 * CC 3.0 Attribution.  May be relicensed without permission/notifcation.
 * https://github.com/jtsage/jquery-mobile-datebox
 *
 * Translation by: Rafael Carballo Cerqueira
 *
 */

jQuery.extend(jQuery.mobile.datebox.prototype.options.lang, {
	'es-ES': {
		setDateButtonLabel: "Guardar Fecha",
		setTimeButtonLabel: "Guardar Hora",
		setDurationButtonLabel: "Guardar Duraci&#243;n",
		calTodayButtonLabel: "Hoy",
		titleDateDialogLabel: "Elija fecha",
		titleTimeDialogLabel: "Elegir Hora",
		daysOfWeek: ["Domingo", "Lunes", "Martes", "Mi&#233;rcoles", "Jueves", "Viernes", "S&#225;bado"],
		daysOfWeekShort: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
		monthsOfYear: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
		monthsOfYearShort: ["Ene", "Feb", "Mar", "Abr", "May", "Jun", "Jul", "Ago", "Sep", "Oct", "Nov", "Dic"],
		durationLabel: ["D&#237;as", "Horas", "Minutos", "Segundos"],
		durationDays: ["D&#237;a", "D&#237;as"],
		tooltip: "Abrir El Calendario",
		nextMonth: "Mes Pr&#243;ximo",
		prevMonth: "Mes Anterior",
		timeFormat: 24,
		headerFormat: '%A, %-d %B, %Y',
		dateFieldOrder: ['d','m','y'],
		timeFieldOrder: ['h', 'i', 'a'],
		slideFieldOrder: ['y', 'm', 'd'],
		dateFormat: "%d/%m/%Y",
		useArabicIndic: false,
		isRTL: false,
		calStartDay: 0,
		clearButton: "Borrar",
		durationOrder: ['d', 'h', 'i', 's'],
		meridiem: ["AM", "PM"],
		timeOutput: "%l:%M %p",
		durationFormat: "%Dd %DA, %Dl:%DM:%DS",
		calDateListLabel: "Otras fechas",
		calHeaderFormat: "%B %Y"
	}
});
jQuery.extend(jQuery.mobile.datebox.prototype.options, {
	useLang: 'es-ES'
});

