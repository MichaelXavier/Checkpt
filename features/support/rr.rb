World do
 include RR::Adapters::RRMethods
end

Before do
  RR.reset
end

After do
  begin
    RR.verify
  ensure
    RR.reset
  end
end
