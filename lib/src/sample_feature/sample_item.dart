class SampleItem {
  SampleItem(this.id);

  final int id;
}

class PagedSampleItem {
  PagedSampleItem(this.page, this.items);

  final int page;
  final List<SampleItem> items;
}
