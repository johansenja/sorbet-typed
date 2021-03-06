# typed: strong

#############
# START: this is copied from sorbet/rbi/gems/paperclip.rbi for paperclip v5.2.1
#############
module Paperclip
  def self.current_attachments_styles; end
  def self.get_registered_attachments_styles; end
  def self.io_adapters; end
  def self.io_adapters=(new_registry); end
  def self.missing_attachments_styles; end
  def self.options; end
  def self.registered_attachments_styles_path; end
  def self.registered_attachments_styles_path=(arg0); end
  def self.save_current_attachments_styles!; end
  extend Paperclip::Helpers
  extend Paperclip::Logger
  extend Paperclip::ProcessorHelpers
end
class Paperclip::GeometryParser
  def initialize(string); end
  def make; end
  def match; end
end
class Paperclip::GeometryDetector
  def geometry_string; end
  def initialize(file); end
  def make; end
  def path; end
  def raise_because_imagemagick_missing; end
  def raise_if_blank_file; end
end
class Paperclip::Geometry
  def aspect; end
  def auto_orient; end
  def cropping(dst, ratio, scale); end
  def height; end
  def height=(arg0); end
  def horizontal?; end
  def initialize(width = nil, height = nil, modifier = nil); end
  def inspect; end
  def larger; end
  def modifier; end
  def modifier=(arg0); end
  def resize_to(geometry); end
  def scale_to(new_geometry); end
  def scaling(dst, ratio); end
  def self.from_file(file); end
  def self.parse(string); end
  def smaller; end
  def square?; end
  def to_s; end
  def transformation_to(dst, crop = nil); end
  def vertical?; end
  def width; end
  def width=(arg0); end
end
class Paperclip::Processor
  def attachment; end
  def attachment=(arg0); end
  def convert(arguments = nil, local_options = nil); end
  def file; end
  def file=(arg0); end
  def identify(arguments = nil, local_options = nil); end
  def initialize(file, options = nil, attachment = nil); end
  def make; end
  def options; end
  def options=(arg0); end
  def self.make(file, options = nil, attachment = nil); end
end
module Paperclip::ProcessorHelpers
  def clear_processors!; end
  def load_processor(name); end
  def processor(name); end
  def register_processor(name, processor); end
end
class Paperclip::ProcessorHelpers::NoSuchProcessor < StandardError
end
# class Paperclip::Tempfile < Tempfile
#   def make_tmpname(prefix_suffix, n); end
# end
module Paperclip::TempfileEncoding
  def binmode; end
end
class Paperclip::Thumbnail < Paperclip::Processor
  def animated; end
  def animated=(arg0); end
  def animated?; end
  def auto_orient; end
  def auto_orient=(arg0); end
  def convert_options; end
  def convert_options=(arg0); end
  def convert_options?; end
  def crop?; end
  def current_geometry; end
  def current_geometry=(arg0); end
  def format; end
  def format=(arg0); end
  def frame_index; end
  def frame_index=(arg0); end
  def identified_as_animated?; end
  def initialize(file, options = nil, attachment = nil); end
  def make; end
  def multi_frame_format?; end
  def source_file_options; end
  def source_file_options=(arg0); end
  def target_geometry; end
  def target_geometry=(arg0); end
  def transformation_command; end
  def whiny; end
  def whiny=(arg0); end
end
module Paperclip::Interpolations
  def attachment(attachment, style_name); end
  def basename(attachment, style_name); end
  def class(attachment = nil, style_name = nil); end
  def content_type_extension(attachment, style_name); end
  def dotextension(attachment, style_name); end
  def extension(attachment, style_name); end
  def filename(attachment, style_name); end
  def fingerprint(attachment, style_name); end
  def hash(attachment = nil, style_name = nil); end
  def id(attachment, style_name); end
  def id_partition(attachment, style_name); end
  def param(attachment, style_name); end
  def rails_env(attachment, style_name); end
  def rails_root(attachment, style_name); end
  def self.[](name); end
  def self.[]=(name, block); end
  def self.all; end
  def self.interpolate(pattern, *args); end
  def self.interpolators_cache; end
  def self.plural_cache; end
  def style(attachment, style_name); end
  def timestamp(attachment, style_name); end
  def updated_at(attachment, style_name); end
  def url(attachment, style_name); end
  extend Paperclip::Interpolations
end
class Paperclip::Interpolations::PluralCache
  def initialize; end
  def pluralize_symbol(symbol); end
  def underscore_and_pluralize_class(klass); end
end
class Paperclip::TempfileFactory
  def basename; end
  def extension; end
  def generate(name = nil); end
  def random_name; end
end
class Paperclip::Style
  def [](key); end
  def []=(key, value); end
  def attachment; end
  def convert_options; end
  def default_format; end
  def format; end
  def geometry; end
  def initialize(name, definition, attachment); end
  def name; end
  def processor_options; end
  def processors; end
  def source_file_options; end
  def whiny; end
  def whiny?; end
end
class Paperclip::UrlGenerator
  def attachment; end
  def attachment_options(*args, &block); end
  def default_url; end
  def escape_regex; end
  def escape_url(url); end
  def escape_url_as_needed(url, options); end
  def for(style_name, options); end
  def initialize(attachment); end
  def most_appropriate_url; end
  def timestamp_as_needed(url, options); end
  def timestamp_possible?; end
end
class Paperclip::Attachment
  def able_to_store_created_at?; end
  def active_validator_classes; end
  def after_flush_writes; end
  def as_json(options = nil); end
  def assign(uploaded_file); end
  def assign_attributes; end
  def assign_file_information; end
  def assign_fingerprint; end
  def assign_timestamps; end
  def blank?; end
  def cleanup_filename(filename); end
  def clear(*styles_to_clear); end
  def content_type; end
  def convert_options; end
  def created_at; end
  def default_options; end
  def default_style; end
  def destroy; end
  def dirty!; end
  def dirty?; end
  def ensure_required_accessors!; end
  def ensure_required_validations!; end
  def errors; end
  def expiring_url(time = nil, style_name = nil); end
  def extra_options_for(style); end
  def extra_source_file_options_for(style); end
  def file?; end
  def filename_cleaner; end
  def fingerprint; end
  def flush_errors; end
  def has_enabled_but_unset_created_at?; end
  def hash_key(style_name = nil); end
  def initialize(name, instance, options = nil); end
  def initialize_storage; end
  def instance; end
  def instance_read(attr); end
  def instance_respond_to?(attr); end
  def instance_write(attr, value); end
  def interpolate(pattern, style_name = nil); end
  def interpolator; end
  def log(message); end
  def missing_required_validator?; end
  def name; end
  def only_process; end
  def options; end
  def original_filename; end
  def path(style_name = nil); end
  def path_option; end
  def post_process(*style_args); end
  def post_process_file; end
  def post_process_style(name, style); end
  def post_process_styles(*style_args); end
  def post_processing; end
  def post_processing=(arg0); end
  def present?; end
  def process_options(options_type, style); end
  def process_style?(style_name, style_args); end
  def processors; end
  def queue_all_for_delete; end
  def queue_some_for_delete(*styles); end
  def queued_for_write; end
  def reprocess!(*style_args); end
  def reset_file_if_original_reprocessed; end
  def reset_updater; end
  def save; end
  def self.default_options; end
  def size; end
  def source_file_options; end
  def staged?; end
  def staged_path(style_name = nil); end
  def styles; end
  def time_zone; end
  def to_s(style_name = nil); end
  def unlink_files(files); end
  def updated_at; end
  def updater; end
  def uploaded_file; end
  def url(style_name = nil, options = nil); end
  def whiny; end
end
module Paperclip::Storage
end
module Paperclip::Storage::Filesystem
  def copy_to_local_file(style, local_dest_path); end
  def exists?(style_name = nil); end
  def flush_deletes; end
  def flush_writes; end
  def move_file(src, dest); end
  def self.extended(base); end
end
module Paperclip::Storage::Fog
  def connection; end
  def convert_time(time); end
  def copy_to_local_file(style, local_dest_path); end
  def directory; end
  def directory_name; end
  def dynamic_fog_host_for_style(style); end
  def exists?(style = nil); end
  def expiring_url(time = nil, style_name = nil); end
  def find_credentials(creds); end
  def flush_deletes; end
  def flush_writes; end
  def fog_credentials; end
  def fog_file; end
  def fog_public(style = nil); end
  def host_name_for_directory; end
  def parse_credentials(creds); end
  def public_url(style = nil); end
  def scheme; end
  def self.extended(base); end
end
module Paperclip::Storage::S3
  def bucket_name; end
  def copy_to_local_file(style, local_dest_path); end
  def create_bucket; end
  def exists?(style = nil); end
  def expiring_url(time = nil, style_name = nil); end
  def find_credentials(creds); end
  def flush_deletes; end
  def flush_writes; end
  def http_proxy_host; end
  def http_proxy_password; end
  def http_proxy_port; end
  def http_proxy_user; end
  def merge_s3_headers(http_headers, s3_headers, s3_metadata); end
  def obtain_s3_instance_for(options); end
  def parse_credentials(creds); end
  def s3_bucket; end
  def s3_credentials; end
  def s3_host_alias; end
  def s3_host_name; end
  def s3_interface; end
  def s3_object(style_name = nil); end
  def s3_permissions(style = nil); end
  def s3_prefixes_in_alias; end
  def s3_protocol(style = nil, with_colon = nil); end
  def s3_region; end
  def s3_storage_class(style = nil); end
  def s3_url_options; end
  def self.extended(base); end
  def set_permissions(permissions); end
  def set_storage_class(storage_class); end
  def style_name_as_path(style_name); end
  def use_accelerate_endpoint?; end
  def use_secure_protocol?(style_name); end
  def using_http_proxy?; end
end
module Paperclip::Callbacks
  def self.included(base); end
end
module Paperclip::Callbacks::Defining
  def define_paperclip_callbacks(*callbacks); end
  def hasta_la_vista_baby; end
end
module Paperclip::Callbacks::Running
  def run_paperclip_callbacks(callback, &block); end
end
class Paperclip::FileCommandContentTypeDetector
  def detect; end
  def initialize(filename); end
  def type_from_file_command; end
end
class Paperclip::MediaTypeSpoofDetector
  def calculated_content_type; end
  def calculated_media_type; end
  def calculated_type_mismatch?; end
  def content_types_from_name; end
  def filename_extension; end
  def has_extension?; end
  def has_name?; end
  def initialize(file, name, content_type); end
  def mapped_content_type; end
  def mapping_override_mismatch?; end
  def media_type_mismatch?; end
  def media_types_from_name; end
  def self.using(file, name, content_type); end
  def spoofed?; end
  def supplied_content_type; end
  def supplied_media_type; end
  def supplied_type_mismatch?; end
  def type_from_file_command; end
end
class Paperclip::ContentTypeDetector
  def blank_name?; end
  def calculated_type_matches; end
  def detect; end
  def empty?; end
  def empty_file?; end
  def initialize(filepath); end
  def possible_types; end
  def type_from_file_command; end
  def type_from_file_contents; end
  def type_from_mime_magic; end
end
module Paperclip::Validators
  extend ActiveSupport::Concern
end
class Paperclip::Validators::AttachmentContentTypeValidator < ActiveModel::EachValidator
  def allowed_types; end
  def check_validity!; end
  def forbidden_types; end
  def initialize(options); end
  def mark_invalid(record, attribute, types); end
  def self.helper_method_name; end
  def validate_blacklist(record, attribute, value); end
  def validate_each(record, attribute, value); end
  def validate_whitelist(record, attribute, value); end
end
module Paperclip::Validators::HelperMethods
  def do_not_validate_attachment_file_type(*attr_names); end
  def validates_attachment_content_type(*attr_names); end
  def validates_attachment_file_name(*attr_names); end
  def validates_attachment_presence(*attr_names); end
  def validates_attachment_size(*attr_names); end
  def validates_media_type_spoof_detection(*attr_names); end
end
class Paperclip::Validators::AttachmentFileNameValidator < ActiveModel::EachValidator
  def allowed; end
  def check_validity!; end
  def forbidden; end
  def initialize(options); end
  def mark_invalid(record, attribute, patterns); end
  def self.helper_method_name; end
  def validate_blacklist(record, attribute, value); end
  def validate_each(record, attribute, value); end
  def validate_whitelist(record, attribute, value); end
end
class Paperclip::Validators::AttachmentPresenceValidator < ActiveModel::EachValidator
  def self.helper_method_name; end
  def validate_each(record, attribute, value); end
end
class Paperclip::Validators::AttachmentSizeValidator < ActiveModel::Validations::NumericalityValidator
  def check_validity!; end
  def extract_option_value(option, option_value); end
  def extract_options(options); end
  def human_size(size); end
  def initialize(options); end
  def max_value_in_human_size(record); end
  def min_value_in_human_size(record); end
  def self.helper_method_name; end
  def validate_each(record, attr_name, value); end
end
class Paperclip::Validators::MediaTypeSpoofDetectionValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value); end
end
class Paperclip::Validators::AttachmentFileTypeIgnoranceValidator < ActiveModel::EachValidator
  def self.helper_method_name; end
  def validate_each(record, attribute, value); end
end
module Paperclip::Validators::ClassMethods
  def create_validating_before_filter(attribute, validator_class, options); end
  def validate_before_processing(validator_class, options); end
  def validates_attachment(*attributes); end
end
module Paperclip::Schema
  def self.included(base); end
end
module Paperclip::Schema::Statements
  def add_attachment(table_name, *attachment_names); end
  def drop_attached_file(*args); end
  def remove_attachment(table_name, *attachment_names); end
end
module Paperclip::Schema::TableDefinition
  def attachment(*attachment_names); end
  def has_attached_file(*attachment_names); end
end
module Paperclip::Schema::CommandRecorder
  def add_attachment(*args); end
  def invert_add_attachment(args); end
end
module Paperclip::Glue
  def self.included(base); end
end
class Paperclip::Error < StandardError
end
module Paperclip::Errors
end
class Paperclip::Errors::StorageMethodNotFound < Paperclip::Error
end
class Paperclip::Errors::CommandNotFoundError < Paperclip::Error
end
class Paperclip::Errors::MissingRequiredValidatorError < Paperclip::Error
end
class Paperclip::Errors::NotIdentifiedByImageMagickError < Paperclip::Error
end
class Paperclip::Errors::InfiniteInterpolationError < Paperclip::Error
end
class Paperclip::AttachmentRegistry
  def clear; end
  def definitions_for(klass); end
  def each_definition; end
  def initialize; end
  def names_for(klass); end
  def register(klass, attachment_name, attachment_options); end
  def self.allocate; end
  def self.clear; end
  def self.definitions_for(klass); end
  def self.each_definition(&block); end
  def self.instance; end
  def self.names_for(klass); end
  def self.new(*arg0); end
  def self.register(klass, attachment_name, attachment_options); end
  extend Singleton::SingletonClassMethods
  include Singleton
end
module Paperclip::Logger
  def log(message); end
  def logger; end
  def logger=(logger); end
  def logging?; end
end
module Paperclip::Helpers
  def class_for(class_name); end
  def configure; end
  def each_instance_with_attachment(klass, name); end
  def interpolates(key, &block); end
  def reset_duplicate_clash_check!; end
  def run(cmd, arguments = nil, interpolation_values = nil, local_options = nil); end
end
class Paperclip::HasAttachedFile
  def add_active_record_callbacks; end
  def add_paperclip_callbacks; end
  def add_required_validations; end
  def define; end
  def define_class_getter; end
  def define_flush_errors; end
  def define_getters; end
  def define_instance_getter; end
  def define_query; end
  def define_setter; end
  def initialize(klass, name, options); end
  def register_new_attachment; end
  def self.define_on(klass, name, options); end
end
module Paperclip::HasAttachedFile::ClassMethods
  def attachment_definitions; end
end
class Paperclip::FilenameCleaner
  def call(filename); end
  def initialize(invalid_character_regex); end
end
class Paperclip::RailsEnvironment
  def get; end
  def rails_environment_exists?; end
  def rails_exists?; end
  def self.get; end
end
class Paperclip::Railtie < Rails::Railtie
  def self.insert; end
end
class Paperclip::AdapterRegistry
  def for(target, options = nil); end
  def handler_for(target); end
  def initialize; end
  def register(handler_class, &block); end
  def registered?(target); end
  def registered_handlers; end
  def unregister(handler_class); end
end
class Paperclip::AdapterRegistry::NoHandlerError < Paperclip::Error
end
class Paperclip::AbstractAdapter
  def assignment?; end
  def binmode(*args, &block); end
  def binmode?(*args, &block); end
  def close!(*args, &block); end
  def close(*args, &block); end
  def closed?(*args, &block); end
  def content_type; end
  def copy_to_tempfile(src); end
  def destination; end
  def eof?(*args, &block); end
  def fingerprint; end
  def initialize(target, options = nil); end
  def inspect; end
  def length; end
  def link_or_copy_file(src, dest); end
  def nil?; end
  def original_filename; end
  def original_filename=(new_filename); end
  def path(*args, &block); end
  def read(length = nil, buffer = nil); end
  def readbyte(*args, &block); end
  def rewind(*args, &block); end
  def size; end
  def unlink(*args, &block); end
end
class Paperclip::EmptyStringAdapter < Paperclip::AbstractAdapter
  def assignment?; end
  def nil?; end
  def self.register; end
end
class Paperclip::IdentityAdapter < Paperclip::AbstractAdapter
  def initialize; end
  def new(target, _); end
  def self.register; end
end
class Paperclip::FileAdapter < Paperclip::AbstractAdapter
  def cache_current_values; end
  def initialize(target, options = nil); end
  def self.register; end
end
class Paperclip::StringioAdapter < Paperclip::AbstractAdapter
  def cache_current_values; end
  def content_type=(arg0); end
  def copy_to_tempfile(source); end
  def initialize(target, options = nil); end
  def self.register; end
end
class Paperclip::DataUriAdapter < Paperclip::StringioAdapter
  def extract_target(uri); end
  def initialize(target_uri, options = nil); end
  def self.register; end
end
class Paperclip::NilAdapter < Paperclip::AbstractAdapter
  def content_type; end
  def eof?; end
  def initialize(_target, _options = nil); end
  def nil?; end
  def original_filename; end
  def read(*_args); end
  def self.register; end
  def size; end
end
class Paperclip::AttachmentAdapter < Paperclip::AbstractAdapter
  def cache_current_values; end
  def copy_to_tempfile(source); end
  def initialize(target, options = nil); end
  def self.register; end
end
class Paperclip::UploadedFileAdapter < Paperclip::AbstractAdapter
  def cache_current_values; end
  def content_type_detector; end
  def determine_content_type; end
  def initialize(target, options = nil); end
  def self.content_type_detector; end
  def self.content_type_detector=(arg0); end
  def self.register; end
end
class Paperclip::UriAdapter < Paperclip::AbstractAdapter
  def cache_current_values; end
  def content_type=(arg0); end
  def content_type_from_content; end
  def copy_to_tempfile(src); end
  def default_filename; end
  def download_content; end
  def filename_from_content_disposition; end
  def filename_from_path; end
  def initialize(target, options = nil); end
  def self.register; end
end
class Paperclip::HttpUrlProxyAdapter < Paperclip::UriAdapter
  def initialize(target, options = nil); end
  def self.register; end
end
module Paperclip::ClassMethods
  def has_attached_file(name, options = nil); end
end
#############
# END: this is copied from sorbet/rbi/gems/paperclip.rbi for paperclip v5.2.1
#############

#############
# the glue below is so that ActiveRecord models can use paperclip.
# some (but not all) of this would otherwise end up in hidden.rbi when srb init is run.
#############
class ActiveRecord::Base
  # https://github.com/thoughtbot/paperclip/blob/v6.1.0/lib/paperclip/railtie.rb#L27
  include ::Paperclip::Glue

  # https://github.com/thoughtbot/paperclip/blob/master/lib/paperclip/glue.rb#L8
  extend Paperclip::ClassMethods
  include ::Paperclip::Callbacks
  include ::Paperclip::Callbacks::Running
  include ::Paperclip::Validators
  extend ::Paperclip::Validators::HelperMethods
  include ::Paperclip::Schema

  extend ::Paperclip::Validators::ClassMethods

  # https://github.com/thoughtbot/paperclip/blob/v5.2.1/lib/paperclip/callbacks.rb#L9
  # same sig as `before_save` etc in ActiveRecord
  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.before_post_process(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.after_post_process(
    arg = nil,
    if: nil,
    unless: nil
  ); end
end
