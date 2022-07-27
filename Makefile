run:
	docker run -it --rm -v ${PWD}/main.carbon:/src/main.carbon vitorhrmiranda/carbon:dev \
		bazel run --ui_event_filters=-info,-stdout,-stderr --noshow_progress //explorer -- /src/main.carbon
